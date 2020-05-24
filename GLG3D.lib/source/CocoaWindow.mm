#import <Cocoa/Cocoa.h>

#include "GLG3D/CocoaWindow.h"

namespace G3D {
    
    Vector2 CocoaWindow::primaryDisplaySize() {
        NSScreen *mainScreen = [NSScreen mainScreen];
        NSRect screenRect = [mainScreen visibleFrame];
        Vector2 ans;
        ans.x = screenRect.size.width;
        ans.y = screenRect.size.height;
        
        return ans;
    }
    
    Vector2 CocoaWindow::virtualDisplaySize() {
        return primaryDisplaySize();
    }
    
    Vector2 CocoaWindow::primaryDisplayWindowSize() {
        return primaryDisplaySize();
    }
    
    int CocoaWindow::numDisplays() {
        return [[NSScreen screens] count];
    }
    
    OSWindow* CocoaWindow::create(const OSWindow::Settings &s) {
        return NULL;
    }
    
}