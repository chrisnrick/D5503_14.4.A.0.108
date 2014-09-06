.class public abstract Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;
.super Ljava/lang/Object;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServoControlBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;,
        Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;
    }
.end annotation


# static fields
.field protected static final CONDITION_LENGTH:I = 0x3

.field protected static final INTEGRAL_SAMPLE_LENGTH:I = 0x6


# instance fields
.field protected final mActualCondition:[F

.field protected mApplierStrategy:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;

.field protected mGainD:F

.field protected mGainI:F

.field protected mGainP:F

.field protected final mInitialCondition:[F

.field protected final mIntegratedDeltas:[F

.field protected mLastDifferences:[F

.field protected final mTargetCondition:[F


# direct methods
.method public constructor <init>(FFF)V
    .locals 8
    .param p1, "initialX"    # F
    .param p2, "initialY"    # F
    .param p3, "initialZ"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    .line 219
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    .line 221
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mTargetCondition:[F

    .line 233
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mIntegratedDeltas:[F

    .line 237
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mApplierStrategy:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;

    .line 249
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aput p1, v1, v4

    .line 250
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aput p2, v1, v5

    .line 251
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aput p3, v1, v6

    .line 252
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->resetActualCondition()V

    .line 253
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mTargetCondition:[F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 254
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mTargetCondition:[F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 255
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mTargetCondition:[F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 257
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mIntegratedDeltas:[F

    aput v7, v1, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aput v7, v1, v4

    .line 260
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aput v7, v1, v5

    .line 261
    return-void
.end method


# virtual methods
.method public getCurrentConcreteApplier()Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    .locals 5

    .prologue
    .line 377
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mApplierStrategy:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;-><init>(FFFLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;)V

    return-object v0
.end method

.method public resetActualCondition()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 296
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 297
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 298
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mInitialCondition:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mIntegratedDeltas:[F

    aput v3, v1, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aput v3, v1, v4

    .line 303
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aput v3, v1, v5

    .line 304
    return-void
.end method

.method public setGains(FFF)V
    .locals 0
    .param p1, "gainP"    # F
    .param p2, "gainI"    # F
    .param p3, "gainD"    # F

    .prologue
    .line 271
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mGainP:F

    .line 272
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mGainI:F

    .line 273
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mGainD:F

    .line 274
    return-void
.end method

.method public update()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 311
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mTargetCondition:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    aget v5, v5, v2

    sub-float v1, v4, v5

    .line 315
    .local v1, "dif":F
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    aget v5, v4, v2

    iget v6, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mGainP:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 318
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mIntegratedDeltas:[F

    aget v4, v4, v2

    const/high16 v5, 0x40c00000

    div-float v3, v4, v5

    .line 319
    .local v3, "oneSample":F
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mIntegratedDeltas:[F

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mIntegratedDeltas:[F

    aget v5, v5, v2

    add-float/2addr v5, v1

    sub-float/2addr v5, v3

    aput v5, v4, v2

    .line 320
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    aget v5, v4, v2

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mIntegratedDeltas:[F

    aget v6, v6, v2

    iget v7, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mGainI:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 323
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aget v4, v4, v8

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aget v4, v4, v9

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_0

    .line 324
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aget v4, v4, v8

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aget v6, v6, v9

    sub-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 326
    .local v0, "dDif":F
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mActualCondition:[F

    aget v5, v4, v2

    iget v6, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mGainD:F

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 328
    .end local v0    # "dDif":F
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aget v5, v5, v8

    aput v5, v4, v9

    .line 329
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mLastDifferences:[F

    aput v1, v4, v8

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "dif":F
    .end local v3    # "oneSample":F
    :cond_1
    return-void
.end method

.method public updateTargetCondition(FFF)V
    .locals 2
    .param p1, "targetX"    # F
    .param p2, "targetY"    # F
    .param p3, "targetZ"    # F

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mTargetCondition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 288
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mTargetCondition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 289
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;->mTargetCondition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 290
    return-void
.end method
