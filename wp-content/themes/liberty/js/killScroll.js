function killScroll(arg) {
    var re = /((x)|(y)|(xy))/;
    if (arg !== undefined) {
        if (re.test(arg)) {
            var axisArr = arg.toUpperCase().split("");
            document.addEventListener('touchstart', function(e) {
                axisArr.forEach(function (axis) {
                    eval('start'+axis+' = e.changedTouches[0].page'+axis);
                });
            }, { passive: false });
            document.addEventListener('touchmove', function() {
                var diff = [];
                if ( event.touches.length === 1 ) {
                    axisArr.forEach(function (axis) {
                        eval('cur'+axis+' = event.touches[0].page'+axis);
                    });
                    axisArr.forEach(function (axis) {
                        diff.push(eval('cur'+axis+'-start'+axis));
                    });
                    if (axisArr.length===2) {
                        if(Math.abs(diff[0])>10 || eval(Math.abs(diff[1])>10)){
                            event.preventDefault();
                        }
                    } else if (axisArr.length===1) {
                        if(Math.abs(diff[0])>10) {
                            event.preventDefault();
                        }
                    }
                }
            }, { passive: false });
        } else console.error('invalid argument for killScroll')
    } else console.error('function ' + killScroll.name + ' must expect an argument')
}