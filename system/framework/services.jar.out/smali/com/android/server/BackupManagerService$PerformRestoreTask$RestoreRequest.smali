.class Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreRequest"
.end annotation


# instance fields
.field public app:Landroid/content/pm/PackageInfo;

.field public storedAppVersion:I

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformRestoreTask;Landroid/content/pm/PackageInfo;I)V
    .locals 0
    .param p2, "_app"    # Landroid/content/pm/PackageInfo;
    .param p3, "_version"    # I

    .prologue
    .line 4515
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;->this$1:Lcom/android/server/BackupManagerService$PerformRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4516
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;->app:Landroid/content/pm/PackageInfo;

    .line 4517
    iput p3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;->storedAppVersion:I

    .line 4518
    return-void
.end method
