.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$7;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->handleLongPressOnRecent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 1227
    iput-object p1, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1230
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1231
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040bb8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1232
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040bb9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "app":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1234
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 1235
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1236
    return-void
.end method
