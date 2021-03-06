PROJECTS_DIR=$HOME/projects

function links_ng_app_to_global {
    for dir in `find $PROJECTS_DIR -maxdepth 1 -type d`
        (cd $dir/ng-app && npm link) || echo `skip $dir, no ng-app dir`
}


function run_django_server {
    if [ -n "$1" ]; then
        DIR=$1
    elif [ -e $VIRTUAL_ENV/.project ]; then
        DIR=`cat $VIRTUAL_ENV/.project`
    else
        DIR=`pwd`
    fi

    if [ -n "$PROJECT_PORT" ]; then
	PORT=$PROJECT_PORT
    else
	PORT=8000
    fi

    $DIR/manage.py runserver localhost:$PORT
}


function edit_virtualenv {
  if [ -z $VIRTUAL_ENV ]; then
    echo "No Python virtual environment activated!"
    return 1
  fi

  (cd $VIRTUAL_ENV && vim -O $VIRTUAL_ENV/bin/postactivate $VIRTUAL_ENV/bin/postdeactivate)
}

function checkout_libs {
  BRANCH="$1"
  echo $1
  echo $BRANCH

  if [ -z $BRANCH ]; then
    echo "No branch name provided"
    return 1
  else
    echo "Selected branch: $BRANCH"
  fi

  if [ -e $VIRTUAL_ENV/.project ]; then
    DIR=`cat $VIRTUAL_ENV/.project`
  elif [ -d `pwd`/lib ]; then
    DIR=`pwd`/lib
  else
    echo "No lib directory found!"
    return 1
  fi

  for node in $DIR/*; do
    if [ -d $node ]; then
      if [ -d $node/.git ]; then
	echo "checkout $node onto $BRANCH"
        (cd $node && git checkout $BRANCH )
      fi
    fi
  done
}

function git_libs {
  if [ -e $VIRTUAL_ENV/.project ]; then
    DIR=`cat $VIRTUAL_ENV/.project`
  elif [ -d `pwd`/lib ]; then
    DIR=`pwd`/lib
  else
    echo "No lib directory found!"
    return 1
  fi

  for dir in $DIR; do
     if [ ! -d "$dir/.git" ]; then
             continue
     fi
     pushd $dir > /dev/null
     echo "$dir `git $1`"
     popd > /dev/null
     # popd
  done

}
