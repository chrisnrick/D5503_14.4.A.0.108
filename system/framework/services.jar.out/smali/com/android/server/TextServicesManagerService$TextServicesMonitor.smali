.class Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p2, "x1"    # Lcom/android/server/TextServicesManagerService$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;)V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    .line 144
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$300(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 148
    .local v0, "retval":Z
    :goto_0
    return v0

    .line 144
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 8

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$400(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/TextServicesManagerService;->access$500(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    invoke-static {v7}, Lcom/android/server/TextServicesManagerService;->access$300(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v7

    # invokes: Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/TextServicesManagerService;->access$600(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    .line 160
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 163
    .local v2, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v2, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 175
    .end local v2    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 164
    .restart local v2    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "change":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {v3, v5, v1}, Lcom/android/server/TextServicesManagerService;->access$700(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_3

    .line 172
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/TextServicesManagerService;->access$800(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V

    .line 175
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
