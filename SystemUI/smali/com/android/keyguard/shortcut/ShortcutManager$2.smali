.class Lcom/android/keyguard/shortcut/ShortcutManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/shortcut/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/shortcut/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/shortcut/ShortcutManager;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "targetPackage":Ljava/lang/String;
    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : Intent.EXTRA_REPLACING false,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # invokes: Lcom/android/keyguard/shortcut/ShortcutManager;->resetShortcut(I)V
    invoke-static {v3, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$100(Lcom/android/keyguard/shortcut/ShortcutManager;I)V

    .line 157
    .end local v1    # "i":I
    .end local v2    # "targetPackage":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 130
    .restart local v1    # "i":I
    .restart local v2    # "targetPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    .end local v2    # "targetPackage":Ljava/lang/String;
    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 140
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 141
    .restart local v2    # "targetPackage":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v6, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    invoke-static {v4}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    # invokes: Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$200(Lcom/android/keyguard/shortcut/ShortcutManager;ILandroid/content/ComponentName;)V

    .line 141
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    .end local v1    # "i":I
    .end local v2    # "targetPackage":Ljava/lang/String;
    :cond_5
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 148
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    goto :goto_1

    .line 149
    :cond_6
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mCR:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$400(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcutSettingObserver:Landroid/database/ContentObserver;
    invoke-static {v4}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$300(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/database/ContentObserver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mCR:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$400(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_application_shortcut"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    # getter for: Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcutSettingObserver:Landroid/database/ContentObserver;
    invoke-static {v6}, Lcom/android/keyguard/shortcut/ShortcutManager;->access$300(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/database/ContentObserver;

    move-result-object v6

    const/4 v7, -0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 155
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager$2;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_1
.end method
