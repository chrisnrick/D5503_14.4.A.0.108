.class public Lcom/sonyericsson/cameracommon/constants/CommonConstants$BroadcastIntent;
.super Ljava/lang/Object;
.source "CommonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/constants/CommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastIntent"
.end annotation


# static fields
.field public static final ACTION_CAMERA_FINISH_CAMERAACTIVITY:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

.field public static final ACTION_CAMERA_NEW_PICT:Ljava/lang/String; = "com.android.camera.NEW_PICTURE"

.field public static final ACTION_MUSICSERVICE_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final MUSICSERVICE_COMMAND:Ljava/lang/String; = "command"

.field public static final MUSICSERVICE_COMMAND_PAUSE:Ljava/lang/String; = "pause"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
