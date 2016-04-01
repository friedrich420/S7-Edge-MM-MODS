.class Landroid/widget/RemoteViews$SetOnTouchPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnTouchPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x20


# instance fields
.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .registers 5
    .param p2, "id"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 4087
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 4088
    iput p2, p0, viewId:I

    .line 4089
    iput-object p3, p0, pendingIntent:Landroid/app/PendingIntent;

    .line 4090
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 4092
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 4093
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, viewId:I

    .line 4094
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, pendingIntent:Landroid/app/PendingIntent;

    .line 4095
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 4105
    iget v2, p0, viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4106
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_14

    iget-object v2, p0, pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_14

    .line 4107
    new-instance v1, Landroid/widget/RemoteViews$SetOnTouchPendingIntent$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SetOnTouchPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnTouchPendingIntent;)V

    .line 4149
    .local v1, "touchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4151
    .end local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    :cond_14
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4154
    const-string v0, "SetOnTouchPendingIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 4098
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4099
    iget v0, p0, viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4100
    iget-object v0, p0, pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4101
    return-void
.end method
