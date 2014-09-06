.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
.super Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;
.source "SettingControlDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CONTROL_DIALOG_LEFT_PADDING:I

.field private mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mItems:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->control_dialog_left_padding:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getPixel(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->CONTROL_DIALOG_LEFT_PADDING:I

    .line 42
    return-void
.end method

.method private computeBackgroundRectBeforeRotation()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 135
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->computeBackgroundRectBeforeRotation()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getPixel(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private updateItems()V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 152
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public getControlDialogLeftPadding()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->CONTROL_DIALOG_LEFT_PADDING:I

    return v0
.end method

.method public getSelectedItemRect(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_shortcut_dialog_background_icn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 59
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 65
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->drawBackground(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 52
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->dialog_items:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    .line 53
    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    const/4 v4, -0x2

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 80
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 87
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "org":Landroid/view/View;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v2, v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "mod":Landroid/view/View;
    if-eq v2, v1, :cond_0

    .line 92
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 93
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .end local v1    # "mod":Landroid/view/View;
    .end local v2    # "org":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v6, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 102
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 103
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2

    .line 106
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->updateItems()V

    .line 107
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    .line 165
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->setUiOrientation(I)V

    .line 162
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->setSensorOrientation(I)V

    .line 169
    return-void
.end method
