.class final enum Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;
.super Ljava/lang/Enum;
.source "RgbFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/RgbFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

.field public static final enum NINE_PATCH_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

.field public static final enum NORMAL_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

.field public static final enum PRE_LOADED_BITMAP:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

.field public static final enum PRE_LOADED_TEXTURE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    const-string v1, "PRE_LOADED_BITMAP"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_BITMAP:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 61
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    const-string v1, "NORMAL_RESOURCE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->NORMAL_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 62
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    const-string v1, "NINE_PATCH_RESOURCE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->NINE_PATCH_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 63
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    const-string v1, "PRE_LOADED_TEXTURE"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_TEXTURE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_BITMAP:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->NORMAL_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->NINE_PATCH_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_TEXTURE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->$VALUES:[Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->$VALUES:[Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    return-object v0
.end method
