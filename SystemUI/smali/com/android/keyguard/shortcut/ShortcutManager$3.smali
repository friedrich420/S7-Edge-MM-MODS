.class Lcom/android/keyguard/shortcut/ShortcutManager$3;
.super Landroid/os/AsyncTask;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ComponentName;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$th:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/shortcut/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    iput p2, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$th:I

    iput-object p3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 311
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 315
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 316
    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShortcut : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$th:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled from settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 345
    :goto_0
    return-object v3

    .line 321
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$600(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v3, :cond_1

    .line 330
    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShortcut: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/keyguard/shortcut/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$700(Lcom/android/keyguard/shortcut/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$600(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 335
    const-string v3, "ShortcutManager"

    const-string v4, "getComponentEnabled ... !COMPONENT_...STATE_ENABLED."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 322
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/keyguard/shortcut/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$700(Lcom/android/keyguard/shortcut/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 340
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$th:I

    aget-object v3, v3, v4

    iput-boolean v7, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->enabled:Z

    .line 341
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$th:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # invokes: Lcom/android/keyguard/shortcut/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$800(Lcom/android/keyguard/shortcut/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 342
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$th:I

    aget-object v3, v3, v4

    iput-object v1, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 343
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$th:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$600(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 345
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 308
    check-cast p1, [Landroid/content/ComponentName;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager$3;->doInBackground([Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 350
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    iget v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$th:I

    # invokes: Lcom/android/keyguard/shortcut/ShortcutManager;->resetShortcut(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$100(Lcom/android/keyguard/shortcut/ShortcutManager;I)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCallback:Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

    iget v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager$3;->val$th:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 308
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
