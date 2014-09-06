.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "RotatableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsCancelable:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

.field private mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

.field protected mScrollableView:Landroid/view/View;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    .line 54
    return-void
.end method


# virtual methods
.method public createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 109
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;-><init>(Landroid/app/AlertDialog;)V

    .line 111
    .local v1, "rotatableDialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setViewAsScrollable(Landroid/view/View;)V

    .line 114
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    if-eq v2, v5, :cond_0

    .line 115
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCancelable(Z)V

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    if-eq v2, v5, :cond_1

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    if-ne v2, v5, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    :cond_1
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mSensorOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 125
    return-object v1

    :cond_2
    move v2, v4

    .line 115
    goto :goto_0

    :cond_3
    move v3, v4

    .line 118
    goto :goto_1
.end method

.method public setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 1

    .prologue
    .line 76
    const v0, 0x1080027

    invoke-super {p0, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 77
    return-object p0
.end method

.method public setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 0
    .param p1, "isCancelable"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;
    .param p2, "isCancelableOnTouchOutside"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .line 100
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .line 101
    return-object p0
.end method

.method public setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 0
    .param p1, "sensorOrientation"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mSensorOrientation:I

    .line 88
    return-object p0
.end method

.method public setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    .line 67
    return-object p0
.end method
