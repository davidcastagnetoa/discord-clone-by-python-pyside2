function deleteComponentAndChildren(component) {
    for(let item = component.children.length; item > 0; item--){
        // Remove Child
        component.children[item-1].destroy()

        //Remove Component
        if(item === 1){
            component.destroy()
        }
    }

}

function count(component) {
    return component.children.length
}
