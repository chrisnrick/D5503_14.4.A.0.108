.class public final enum Lcom/android/internal/telephony/DctConstants$State;
.super Ljava/lang/Enum;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DctConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DctConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum FAILED:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum RETRYING:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum SCANNING:Lcom/android/internal/telephony/DctConstants$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const-string v1, "RETRYING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->$VALUES:[Lcom/android/internal/telephony/DctConstants$State;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/android/internal/telephony/DctConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->$VALUES:[Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method
