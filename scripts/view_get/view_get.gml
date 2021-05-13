/// view_get(VIEW, NUMBER_VIEW)
var __prop = argument0;
var __index = argument1;

var __res = -1;

switch(__prop)
{
case view.XView: var __cam = view_get_camera(__index); __res = camera_get_view_x(__cam); break;
case view.YView: var __cam = view_get_camera(__index); __res = camera_get_view_y(__cam); break;
case view.WView: var __cam = view_get_camera(__index); __res = camera_get_view_width(__cam); break;
case view.HView: var __cam = view_get_camera(__index); __res = camera_get_view_height(__cam); break;
case view.Angle: var __cam = view_get_camera(__index); __res = camera_get_view_angle(__cam); break;
case view.HBorder: var __cam = view_get_camera(__index); __res = camera_get_view_border_x(__cam); break;
case view.VBorder: var __cam = view_get_camera(__index); __res = camera_get_view_border_y(__cam); break;
case view.HSpeed: var __cam = view_get_camera(__index); __res = camera_get_view_speed_x(__cam); break;
case view.VSpeed: var __cam = view_get_camera(__index); __res = camera_get_view_speed_y(__cam); break;
case view.Object: var __cam = view_get_camera(__index); __res = camera_get_view_target(__cam); break;
case view.Visible: __res = view_get_visible(__index); break;
case view.XPort: __res = view_get_xport(__index); break;
case view.YPort: __res = view_get_yport(__index); break;
case view.WPort: __res = view_get_wport(__index); break;
case view.HPort: __res = view_get_hport(__index); break;
case view.Camera: __res = view_get_camera(__index); break;
case view.SurfaceID: __res = view_get_surface_id(__index); break;
default: break;
};

return __res;
