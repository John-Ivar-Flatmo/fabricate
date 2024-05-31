import bpy
import sys

##TO-DO

argv = sys.argv
argv = argv[argv.index("--") + 1:] # get all args after "--"

stl_in = argv[0]
obj_out = argv[1]

bpy.ops.import_mesh.stl(filepath=stl_in)
##bpy.ops.export_scene.obj(filepath=obj_out, axis_forward='-Z', axis_up='Y') #old no longer supported
bpy.ops.wm.obj_export(filepath=obj_out,export_materials=False)
