.class Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator$ApplierStrategyImpl;
.super Ljava/lang/Object;
.source "TransitionControllerUtil.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplierStrategyImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$1;

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator$ApplierStrategyImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(FFFLcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .locals 0
    .param p1, "actX"    # F
    .param p2, "actY"    # F
    .param p3, "actZ"    # F
    .param p4, "renderer"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    .line 436
    invoke-virtual {p4, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->rotate(FFF)V

    .line 437
    return-void
.end method
