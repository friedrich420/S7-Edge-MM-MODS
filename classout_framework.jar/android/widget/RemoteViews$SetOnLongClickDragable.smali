.class Landroid/widget/RemoteViews$SetOnLongClickDragable;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnLongClickDragable"
.end annotation


# static fields
.field public static final TAG:I = 0x13


# instance fields
.field clipData:Landroid/content/ClipData;

.field dragEnterNotiIntent:Landroid/app/PendingIntent;

.field dragExitNotiIntent:Landroid/app/PendingIntent;

.field dragStartIntent:Landroid/app/PendingIntent;

.field isNeedToRemove:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/ClipData;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 9
    .param p2, "id"    # I
    .param p3, "clipData"    # Landroid/content/ClipData;
    .param p4, "dragStartNotiIntent"    # Landroid/app/PendingIntent;
    .param p5, "dragEnterNotiIntent"    # Landroid/app/PendingIntent;
    .param p6, "dragExitNotiIntent"    # Landroid/app/PendingIntent;
    .param p7, "isNeedToRemove"    # Z

    .prologue
    .line 3825
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3826
    iput p2, p0, viewId:I

    .line 3827
    iput-boolean p7, p0, isNeedToRemove:Z

    .line 3828
    iput-object p3, p0, clipData:Landroid/content/ClipData;

    .line 3829
    iput-object p4, p0, dragStartIntent:Landroid/app/PendingIntent;

    .line 3830
    iput-object p5, p0, dragEnterNotiIntent:Landroid/app/PendingIntent;

    .line 3831
    iput-object p6, p0, dragExitNotiIntent:Landroid/app/PendingIntent;

    .line 3832
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 6
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 3834
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3835
    const-string v0, "RemoteViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetOnLongClickDragable - read:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, viewId:I

    .line 3837
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    :goto_2f
    iput-boolean v0, p0, isNeedToRemove:Z

    .line 3838
    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, clipData:Landroid/content/ClipData;

    .line 3839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 3840
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, dragStartIntent:Landroid/app/PendingIntent;

    .line 3842
    :cond_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    .line 3843
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, dragEnterNotiIntent:Landroid/app/PendingIntent;

    .line 3845
    :cond_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    .line 3846
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, dragExitNotiIntent:Landroid/app/PendingIntent;

    .line 3848
    :cond_63
    return-void

    .line 3837
    :cond_64
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .prologue
    .line 3880
    iget v3, p0, viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3881
    .local v2, "target":Landroid/view/View;
    if-eqz v2, :cond_20

    .line 3882
    new-instance v1, Landroid/widget/RemoteViews$SetOnLongClickDragable$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SetOnLongClickDragable$1;-><init>(Landroid/widget/RemoteViews$SetOnLongClickDragable;)V

    .line 3908
    .local v1, "longClickListener":Landroid/view/View$OnLongClickListener;
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3910
    iget-object v3, p0, dragEnterNotiIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_18

    iget-object v3, p0, dragExitNotiIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_20

    .line 3912
    :cond_18
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;-><init>(Landroid/widget/RemoteViews$SetOnLongClickDragable;)V

    .line 3951
    .local v0, "dragLinstener":Landroid/view/View$OnDragListener;
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 3954
    .end local v0    # "dragLinstener":Landroid/view/View$OnDragListener;
    .end local v1    # "longClickListener":Landroid/view/View$OnLongClickListener;
    :cond_20
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3958
    const-string v0, "SetOnLongClickDragable"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3852
    const-string v0, "RemoteViews"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetOnLongClickDragable - writeToParcel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3854
    iget v0, p0, viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3855
    iget-boolean v0, p0, isNeedToRemove:Z

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_2d
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3856
    iget-object v0, p0, clipData:Landroid/content/ClipData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3857
    iget-object v0, p0, dragStartIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5d

    .line 3858
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3859
    iget-object v0, p0, dragStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3863
    :goto_42
    iget-object v0, p0, dragEnterNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_61

    .line 3864
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3865
    iget-object v0, p0, dragEnterNotiIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3869
    :goto_4e
    iget-object v0, p0, dragExitNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_65

    .line 3870
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3871
    iget-object v0, p0, dragExitNotiIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3875
    :goto_5a
    return-void

    :cond_5b
    move v0, v2

    .line 3855
    goto :goto_2d

    .line 3861
    :cond_5d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 3867
    :cond_61
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    .line 3873
    :cond_65
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5a
.end method
