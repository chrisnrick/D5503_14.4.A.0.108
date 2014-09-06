.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageToFile"
.end annotation


# instance fields
.field private mJpegData:[B

.field mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

.field private final mPath:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;[BLandroid/net/Uri;)V
    .locals 1
    .param p2, "jpegData"    # [B
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 314
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 315
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 316
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 317
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    .line 318
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;[BLjava/lang/String;)V
    .locals 1
    .param p2, "jpegData"    # [B
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 303
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 304
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 305
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 306
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    .line 307
    return-void
.end method

.method private createOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 339
    :goto_0
    return-object v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    const-string v0, "SavingTaskManager"

    const-string v1, "Save path and uri is not set."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 327
    :goto_0
    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_1
    const-string v0, "SavingTaskManager"

    const-string v1, "Save path and uri is not set."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storeData(Ljava/lang/Exception;)Z
    .locals 8
    .param p1, "dummyException"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 350
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 351
    .local v0, "delegate":Ljava/io/OutputStream;
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {v3, v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 353
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    if-eqz p1, :cond_2

    .line 355
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    .end local v0    # "delegate":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v3, "SavingTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store fail file not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 400
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v3, :cond_0

    .line 402
    :try_start_4
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 411
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_0
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    :goto_1
    return v2

    .line 353
    .restart local v0    # "delegate":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 372
    .end local v0    # "delegate":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 373
    .local v1, "ex":Ljava/io/IOException;
    :try_start_7
    const-string v3, "SavingTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store fail I/O Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$2;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 400
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v3, :cond_1

    .line 402
    :try_start_8
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 411
    :cond_1
    :goto_2
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    goto :goto_1

    .line 357
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "delegate":Ljava/io/OutputStream;
    :cond_2
    :try_start_9
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 358
    const/4 v2, 0x1

    .line 400
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v3, :cond_3

    .line 402
    :try_start_a
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 411
    :cond_3
    :goto_3
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    goto :goto_1

    .line 404
    :catch_2
    move-exception v1

    .line 406
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v3, "SavingTaskManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto :goto_3

    .line 404
    .end local v0    # "delegate":Ljava/io/OutputStream;
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 406
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "SavingTaskManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto :goto_0

    .line 404
    :catch_4
    move-exception v1

    .line 406
    const-string v3, "SavingTaskManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto :goto_2

    .line 386
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 387
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_b
    const-string v3, "SavingTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Occurred other exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$3;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 400
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v3, :cond_4

    .line 402
    :try_start_c
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 411
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    :goto_4
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    goto/16 :goto_1

    .line 404
    .restart local v1    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 406
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "SavingTaskManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto :goto_4

    .line 400
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v3, :cond_5

    .line 402
    :try_start_d
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 411
    :cond_5
    :goto_5
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    throw v2

    .line 404
    :catch_7
    move-exception v1

    .line 406
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v3, "SavingTaskManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto :goto_5
.end method
