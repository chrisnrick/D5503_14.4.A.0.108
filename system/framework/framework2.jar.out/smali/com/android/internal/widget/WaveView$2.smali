.class Lcom/android/internal/widget/WaveView$2;
.super Ljava/lang/Object;
.source "WaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/WaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/WaveView;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mMouseX:F
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$100(Lcom/android/internal/widget/WaveView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockCenterX:F
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$200(Lcom/android/internal/widget/WaveView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v8, v1

    .line 434
    .local v8, "distX":D
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mMouseY:F
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$300(Lcom/android/internal/widget/WaveView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockCenterY:F
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$400(Lcom/android/internal/widget/WaveView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v10, v1

    .line 435
    .local v10, "distY":D
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v12, v1

    .line 436
    .local v12, "dragDistance":I
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockState:I
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$000(Lcom/android/internal/widget/WaveView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mSnapRadius:I
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$500(Lcom/android/internal/widget/WaveView;)I

    move-result v1

    if-ge v12, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$600(Lcom/android/internal/widget/WaveView;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    const-wide/16 v2, 0x7d0

    iget-object v4, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v4}, Lcom/android/internal/widget/WaveView;->access$600(Lcom/android/internal/widget/WaveView;)J

    move-result-wide v4

    const-wide/16 v6, 0xf

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    # setter for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/WaveView;->access$602(Lcom/android/internal/widget/WaveView;J)J

    .line 440
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$800(Lcom/android/internal/widget/WaveView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mCurrentWave:I
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$700(Lcom/android/internal/widget/WaveView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DrawableHolder;

    .line 441
    .local v0, "wave":Lcom/android/internal/widget/DrawableHolder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 442
    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 443
    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 444
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mMouseX:F
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$100(Lcom/android/internal/widget/WaveView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mMouseY:F
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$300(Lcom/android/internal/widget/WaveView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 447
    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x0

    const-string v5, "x"

    iget-object v6, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockCenterX:F
    invoke-static {v6}, Lcom/android/internal/widget/WaveView;->access$200(Lcom/android/internal/widget/WaveView;)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 448
    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x0

    const-string v5, "y"

    iget-object v6, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockCenterY:F
    invoke-static {v6}, Lcom/android/internal/widget/WaveView;->access$400(Lcom/android/internal/widget/WaveView;)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 449
    const-wide/16 v1, 0x535

    const-wide/16 v3, 0x0

    const-string v5, "alpha"

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 450
    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x0

    const-string v5, "scaleX"

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 451
    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x0

    const-string v5, "scaleY"

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 453
    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x514

    const-string v5, "alpha"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 454
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 456
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mCurrentWave:I
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$700(Lcom/android/internal/widget/WaveView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mWaveCount:I
    invoke-static {v3}, Lcom/android/internal/widget/WaveView;->access$900(Lcom/android/internal/widget/WaveView;)I

    move-result v3

    rem-int/2addr v2, v3

    # setter for: Lcom/android/internal/widget/WaveView;->mCurrentWave:I
    invoke-static {v1, v2}, Lcom/android/internal/widget/WaveView;->access$702(Lcom/android/internal/widget/WaveView;I)I

    .line 461
    .end local v0    # "wave":Lcom/android/internal/widget/DrawableHolder;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mFinishWaves:Z
    invoke-static {v1}, Lcom/android/internal/widget/WaveView;->access$1000(Lcom/android/internal/widget/WaveView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/widget/WaveView;->mWavesRunning:Z
    invoke-static {v1, v2}, Lcom/android/internal/widget/WaveView;->access$1102(Lcom/android/internal/widget/WaveView;Z)Z

    .line 467
    :goto_1
    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    const-wide/16 v2, 0xc

    # += operator for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/WaveView;->access$614(Lcom/android/internal/widget/WaveView;J)J

    goto :goto_0

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$1200(Lcom/android/internal/widget/WaveView;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v3}, Lcom/android/internal/widget/WaveView;->access$600(Lcom/android/internal/widget/WaveView;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
