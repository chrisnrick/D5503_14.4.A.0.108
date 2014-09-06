.class Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;
.super Ljava/lang/Object;
.source "BackgroundWorker.java"


# static fields
.field private static final SHUTDOWN_TIMEOUT_MILLISECONDS:I = 0x7d0


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 35
    .local v0, "readySignal":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker$1;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker$1;-><init>(Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mHandler:Landroid/os/Handler;

    .line 56
    return-void

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mLooper:Landroid/os/Looper;

    return-object p1
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public quit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 64
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 65
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 66
    return-void
.end method
