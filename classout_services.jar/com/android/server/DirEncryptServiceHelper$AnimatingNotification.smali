.class Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatingNotification"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnctype:I

.field private mLevel:I

.field private mProgress:I

.field private mStop:Z

.field notification_builder:Landroid/app/Notification$Builder;

.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    iput-object p1, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 146
    iput-boolean v1, p0, mStop:Z

    .line 147
    const/4 v0, -0x1

    iput v0, p0, mLevel:I

    .line 148
    iput v1, p0, mEnctype:I

    .line 149
    iput v1, p0, mProgress:I

    .line 150
    iput-object v2, p0, notification_builder:Landroid/app/Notification$Builder;

    .line 153
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 154
    return-void
.end method

.method static synthetic access$602(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, mProgress:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, mEnctype:I

    return p1
.end method


# virtual methods
.method public isInProgress()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, mStop:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    .line 173
    .local v2, "icon":I
    const-string v3, ""

    .line 174
    .local v3, "contentTitle":Ljava/lang/String;
    const-string v4, ""

    .line 176
    .local v4, "contentText":Ljava/lang/String;
    iget-object v0, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 177
    :try_start_e
    iget v0, p0, mLevel:I

    const/4 v5, 0x4

    if-ge v0, v5, :cond_b7

    .line 178
    iget v0, p0, mLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mLevel:I

    .line 182
    :goto_19
    iget v0, p0, mEnctype:I

    if-ne v0, v8, :cond_bf

    .line 183
    const v2, 0x108031e

    .line 184
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040863

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040862

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    :goto_3a
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {v0, v5, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 194
    iget-object v0, p0, notification_builder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_55

    .line 195
    iget-object v0, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    move-object v5, v4

    # invokes: Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    invoke-static/range {v0 .. v5}, Lcom/android/server/DirEncryptServiceHelper;->access$300(Lcom/android/server/DirEncryptServiceHelper;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, notification_builder:Landroid/app/Notification$Builder;

    .line 196
    :cond_55
    iget-object v0, p0, notification_builder:Landroid/app/Notification$Builder;

    iget v5, p0, mLevel:I

    invoke-virtual {v0, v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 197
    iget-object v0, p0, notification_builder:Landroid/app/Notification$Builder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 198
    iget-object v0, p0, notification_builder:Landroid/app/Notification$Builder;

    const/16 v5, 0x64

    iget v8, p0, mProgress:I

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 199
    iget-object v0, p0, notification_builder:Landroid/app/Notification$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, mProgress:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 201
    iget-boolean v0, p0, mStop:Z

    if-nez v0, :cond_de

    .line 202
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 203
    .local v6, "nm":Landroid/app/NotificationManager;
    sget v0, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    iget-object v5, p0, notification_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 204
    iget-object v0, p0, this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->access$100(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    .end local v6    # "nm":Landroid/app/NotificationManager;
    :goto_b5
    monitor-exit v7

    .line 209
    return-void

    .line 180
    :cond_b7
    const/4 v0, 0x0

    iput v0, p0, mLevel:I

    goto/16 :goto_19

    .line 208
    :catchall_bc
    move-exception v0

    monitor-exit v7
    :try_end_be
    .catchall {:try_start_e .. :try_end_be} :catchall_bc

    throw v0

    .line 187
    :cond_bf
    const v2, 0x10802b8

    .line 188
    :try_start_c2
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040867

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040866

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3a

    .line 206
    :cond_de
    const/4 v0, 0x0

    iput-object v0, p0, notification_builder:Landroid/app/Notification$Builder;
    :try_end_e1
    .catchall {:try_start_c2 .. :try_end_e1} :catchall_bc

    goto :goto_b5
.end method

.method public start()V
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, mStop:Z

    .line 163
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, mStop:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, notification_builder:Landroid/app/Notification$Builder;

    .line 159
    return-void
.end method
