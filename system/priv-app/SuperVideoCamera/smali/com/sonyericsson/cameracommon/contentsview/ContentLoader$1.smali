.class synthetic Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->values()[Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
