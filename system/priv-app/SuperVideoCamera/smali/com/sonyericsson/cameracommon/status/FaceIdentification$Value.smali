.class public final enum Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;
.super Ljava/lang/Enum;
.source "FaceIdentification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/FaceIdentification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;


# instance fields
.field private final mStringExpression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    const-string v1, "ON"

    const-string v2, "on"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;->ON:Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    .line 25
    new-instance v0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    const-string v1, "OFF"

    const-string v2, "off"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;->ON:Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;->mStringExpression:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;->mStringExpression:Ljava/lang/String;

    return-object v0
.end method
