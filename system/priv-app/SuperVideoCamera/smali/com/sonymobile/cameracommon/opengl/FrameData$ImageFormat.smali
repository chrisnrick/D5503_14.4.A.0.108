.class public final enum Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
.super Ljava/lang/Enum;
.source "FrameData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/FrameData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

.field public static final enum RGB888:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

.field public static final enum YVU420_SEMIPLANAR:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    const-string v1, "YVU420_SEMIPLANAR"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->YVU420_SEMIPLANAR:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    const-string v1, "RGB888"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->RGB888:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->YVU420_SEMIPLANAR:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->RGB888:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->$VALUES:[Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->$VALUES:[Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    return-object v0
.end method
