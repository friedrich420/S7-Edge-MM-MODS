.class Lcom/android/systemui/qs/tiles/SyncTile$3$1;
.super Landroid/os/AsyncTask;
.source "SyncTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SyncTile$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SyncTile$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile$3;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$3$1;->this$1:Lcom/android/systemui/qs/tiles/SyncTile$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$3$1;->this$1:Lcom/android/systemui/qs/tiles/SyncTile$3;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/SyncTile$3;->val$state:Z

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 161
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile$3$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
