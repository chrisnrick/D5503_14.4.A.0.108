.class public Lcom/android/phone/InCallUiState;
.super Ljava/lang/Object;
.source "InCallUiState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallUiState$ProgressIndicationType;,
        Lcom/android/phone/InCallUiState$InCallScreenMode;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/InCallUiState;


# instance fields
.field dialpadDigits:Ljava/lang/String;

.field inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field isScreenOnBeforeCalling:Z

.field latestActiveCallOrigin:Ljava/lang/String;

.field latestActiveCallOriginTimeStamp:J

.field private mContext:Landroid/content/Context;

.field private mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

.field needToShowCallLostDialog:Z

.field private progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

.field providerAddress:Ljava/lang/String;

.field providerGatewayUri:Landroid/net/Uri;

.field providerIcon:Landroid/graphics/drawable/Drawable;

.field providerLabel:Ljava/lang/CharSequence;

.field providerOverlayVisible:Z

.field showDialpad:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 208
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 315
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 92
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;
    .locals 4

    .prologue
    .line 77
    const-class v1, Lcom/android/phone/InCallUiState;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/phone/InCallUiState;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallUiState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    .line 83
    :goto_0
    sget-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    monitor-exit v1

    return-object v0

    .line 81
    :cond_0
    const-string v0, "InCallUiState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearPendingCallStatusCode()V
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 259
    return-void
.end method

.method public clearProgressIndication()V
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 325
    return-void
.end method

.method public clearProviderOverlayInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 379
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    .line 380
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    .line 381
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    .line 382
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    return-object v0
.end method

.method public getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    return-object v0
.end method

.method public hasPendingCallStatusCode()Z
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProgressIndicationActive()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 3
    .param p1, "status"    # Lcom/android/phone/Constants$CallStatusCode;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v1, :cond_0

    .line 241
    const-string v0, "InCallUiState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingCallStatusCode: setting new code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but a previous code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already pending!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 246
    return-void
.end method

.method public setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V
    .locals 0
    .param p1, "value"    # Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 320
    return-void
.end method

.method public setProviderOverlayInfo(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    .line 361
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    .line 363
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 368
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallUiState;->clearProviderOverlayInfo()V

    .line 372
    :cond_1
    return-void
.end method
