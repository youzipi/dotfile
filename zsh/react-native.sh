# react-native
alias rna="react-native run-android"
alias rni="react-native run-ios"
export REACT_EDITOR=atom
export ANDROID_HOME=/usr/local/opt/android-sdk


# flow watch
function flow-watch () {
    flow status;
    fswatch -e "/\." -o . | xargs -n1 -I{} flow status;
}