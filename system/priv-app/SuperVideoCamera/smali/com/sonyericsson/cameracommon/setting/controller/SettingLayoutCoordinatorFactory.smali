.class Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory;
.super Ljava/lang/Object;
.source "SettingLayoutCoordinatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static createControlLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    .locals 3
    .param p0, "dialog"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .prologue
    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->containerRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->anchorRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static createMenuLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    .locals 2
    .param p0, "dialog"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .prologue
    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->containerRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static createSecondLayerLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    .locals 3
    .param p0, "view"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .prologue
    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->containerRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->anchorRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static createShortcutLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    .locals 3
    .param p0, "view"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .prologue
    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->containerRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->anchorRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method
