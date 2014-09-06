.class public Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    }
.end annotation


# static fields
.field private static final MAX_LOCAL_CACHE_NUM:I = 0x64

.field public static final PANORAMA_ASPECT_THRESHOLD:F = 1.8777778f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

.field private mContext:Landroid/content/Context;

.field private mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

.field private mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

.field private mLocalCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "securityLevel"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .param p3, "callback"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    .param p4, "maxContentNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 102
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 104
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p4}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 105
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    .line 106
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    .line 107
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeFuture(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->addLocalCache(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addLocalCache(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 338
    :cond_0
    return-void
.end method

.method private clearLocalCache()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 347
    :cond_0
    return-void
.end method

.method private getLocalCache()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    return-object v0
.end method

.method private loadData(Lcom/sonyericsson/cameracommon/contentsview/DataLoader;)V
    .locals 3
    .param p1, "task"    # Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    .prologue
    .line 213
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v2

    if-gtz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 216
    .local v1, "oldestTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 217
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 221
    .end local v1    # "oldestTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 222
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private removeFuture(I)V
    .locals 4
    .param p1, "indexId"    # I

    .prologue
    .line 233
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v3, :cond_1

    .line 257
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 238
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 239
    const/4 v2, 0x0

    .line 241
    .local v2, "id":I
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 250
    :goto_1
    if-ne v2, p1, :cond_2

    .line 253
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :catch_0
    move-exception v3

    goto :goto_1

    .line 242
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public pause()V
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 117
    .local v1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 119
    .end local v1    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    .line 124
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    .line 133
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 136
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 140
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 142
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeAllMessages()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V

    .line 146
    return-void
.end method

.method public reload(I[Ljava/lang/String;)V
    .locals 9
    .param p1, "number"    # I
    .param p2, "destinations"    # [Ljava/lang/String;

    .prologue
    .line 177
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel:[I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 198
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 199
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;ILcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V

    .line 201
    .local v0, "task":Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadData(Lcom/sonyericsson/cameracommon/contentsview/DataLoader;)V

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "task":Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
    .end local v3    # "index":I
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v8

    .line 182
    .local v8, "localCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;>;"
    if-eqz v8, :cond_0

    .line 183
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 187
    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 188
    .local v7, "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;->create(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v6

    .line 189
    .local v6, "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v6}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 205
    .end local v3    # "index":I
    .end local v6    # "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .end local v7    # "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .end local v8    # "localCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;>;"
    :cond_0
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public request(ILandroid/net/Uri;)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 165
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;-><init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V

    .line 166
    .local v0, "task":Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadData(Lcom/sonyericsson/cameracommon/contentsview/DataLoader;)V

    .line 167
    return-void
.end method

.method public updateSecurityLevel(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;)V
    .locals 0
    .param p1, "securityLevel"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 150
    return-void
.end method
