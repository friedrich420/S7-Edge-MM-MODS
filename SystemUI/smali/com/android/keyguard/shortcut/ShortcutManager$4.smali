.class Lcom/android/keyguard/shortcut/ShortcutManager$4;
.super Landroid/os/AsyncTask;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

.field final synthetic val$th:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/shortcut/ShortcutManager;I)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/keyguard/shortcut/ShortcutManager$4;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    iput p2, p0, Lcom/android/keyguard/shortcut/ShortcutManager$4;->val$th:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 548
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 553
    .local v2, "th":I
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$4;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$600(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$4;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v4}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 559
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$4;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$4;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # invokes: Lcom/android/keyguard/shortcut/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$800(Lcom/android/keyguard/shortcut/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 561
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v3

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 545
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager$4;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 566
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager$4;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCallback:Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

    iget v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager$4;->val$th:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;->updateShortcutIconOnly(I)V

    .line 569
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 545
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
