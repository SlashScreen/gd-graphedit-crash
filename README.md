This is a minimum viable reproduction for a bug I am experiencing with Godot. 

What's happening: The editor crashes when removing children from a GraphEdit in a popup window in the editor (tool script).
To reproduce this, open the project in the editor, and click "X" to close the popup window.

Backtrace:
```
CrashHandlerException: Program crashed
Engine version: Godot Engine v4.3.1.rc.custom_build (6699ae7897658e44efc3cfb2cba91c11a8f5aa6a)
Dumping the backtrace. Please include this when reporting the bug to the project developer.
[0] Node::is_accessible_from_caller_thread (J:\Programs\misc\godot\scene\main\node.h:587)
[1] CanvasItem::queue_redraw (J:\Programs\misc\godot\scene\main\canvas_item.cpp:423)
[2] GraphEdit::remove_child_notify (J:\Programs\misc\godot\scene\gui\graph_edit.cpp:665)
[3] Node::remove_child (J:\Programs\misc\godot\scene\main\node.cpp:1619)
[4] Node::_notification (J:\Programs\misc\godot\scene\main\node.cpp:241)
[5] Node::_notificationv (J:\Programs\misc\godot\scene\main\node.h:50)
[6] CanvasItem::_notificationv (J:\Programs\misc\godot\scene\main\canvas_item.h:45)
[7] Control::_notificationv (J:\Programs\misc\godot\scene\gui\control.h:48)
[8] Container::_notificationv (J:\Programs\misc\godot\scene\gui\container.h:37)
[9] GraphElement::_notificationv (J:\Programs\misc\godot\scene\gui\graph_element.h:37)
[10] GraphNode::_notificationv (J:\Programs\misc\godot\scene\gui\graph_node.h:39)
[11] Object::notification (J:\Programs\misc\godot\core\object\object.cpp:887)
[12] Object::_predelete (J:\Programs\misc\godot\core\object\object.cpp:201)
[13] predelete_handler (J:\Programs\misc\godot\core\object\object.cpp:2132)
[14] memdelete<Object> (J:\Programs\misc\godot\core\os\memory.h:112)
[15] SceneTree::_flush_delete_queue (J:\Programs\misc\godot\scene\main\scene_tree.cpp:1366)
[16] SceneTree::physics_process (J:\Programs\misc\godot\scene\main\scene_tree.cpp:501)
[17] Main::iteration (J:\Programs\misc\godot\main\main.cpp:4113)
[18] OS_Windows::run (J:\Programs\misc\godot\platform\windows\os_windows.cpp:1658)
[19] widechar_main (J:\Programs\misc\godot\platform\windows\godot_windows.cpp:180)
[20] _main (J:\Programs\misc\godot\platform\windows\godot_windows.cpp:206)
[21] main (J:\Programs\misc\godot\platform\windows\godot_windows.cpp:220)
[22] WinMain (J:\Programs\misc\godot\platform\windows\godot_windows.cpp:234)
[23] __scrt_common_main_seh (D:\a\_work\1\s\src\vctools\crt\vcstartup\src\startup\exe_common.inl:288)
[24] <couldn't map PC to fn name>
```
