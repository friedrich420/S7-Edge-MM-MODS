.class Landroid/widget/RemoteViews$ImageFilterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFilterAction"
.end annotation


# static fields
.field public static final TAG:I = 0x1f


# instance fields
.field arg1:F

.field arg2:F

.field arg3:F

.field arg4:F

.field arg5:F

.field arg6:F

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field type:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIFFFFFF)V
    .registers 11
    .param p2, "viewId"    # I
    .param p3, "type"    # I
    .param p4, "arg1"    # F
    .param p5, "arg2"    # F
    .param p6, "arg3"    # F
    .param p7, "arg4"    # F
    .param p8, "arg5"    # F
    .param p9, "arg6"    # F

    .prologue
    .line 3998
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3999
    iput p2, p0, viewId:I

    .line 4000
    iput p3, p0, type:I

    .line 4001
    iput p4, p0, arg1:F

    .line 4002
    iput p5, p0, arg2:F

    .line 4003
    iput p6, p0, arg3:F

    .line 4004
    iput p7, p0, arg4:F

    .line 4005
    iput p8, p0, arg5:F

    .line 4006
    iput p9, p0, arg6:F

    .line 4007
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 4009
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 4010
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, viewId:I

    .line 4011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, type:I

    .line 4012
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, arg1:F

    .line 4013
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, arg2:F

    .line 4014
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, arg3:F

    .line 4015
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, arg4:F

    .line 4016
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, arg5:F

    .line 4017
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, arg6:F

    .line 4018
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .prologue
    .line 4037
    iget v2, p0, viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4038
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_9

    .line 4058
    :goto_8
    return-void

    .line 4040
    :cond_9
    iget v2, p0, type:I

    packed-switch v2, :pswitch_data_3a

    goto :goto_8

    .line 4045
    :pswitch_f
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4046
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4048
    iget v2, p0, type:I

    invoke-static {v2}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$DropShadowFilter;

    .line 4049
    .local v0, "filter":Landroid/graphics/ImageFilter$DropShadowFilter;
    iget v2, p0, arg1:F

    invoke-virtual {v0, v2}, Landroid/graphics/ImageFilter$DropShadowFilter;->setDistance(F)V

    .line 4050
    iget v2, p0, arg2:F

    invoke-virtual {v0, v2}, Landroid/graphics/ImageFilter$DropShadowFilter;->setAngle(F)V

    .line 4051
    iget v2, p0, arg3:F

    iget v3, p0, arg4:F

    iget v4, p0, arg5:F

    iget v5, p0, arg6:F

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/ImageFilter$DropShadowFilter;->setShadowColor(FFFF)V

    .line 4052
    invoke-virtual {v1, v0}, Landroid/view/View;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_8

    .line 4040
    nop

    :pswitch_data_3a
    .packed-switch 0x37
        :pswitch_f
    .end packed-switch
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4062
    const-string v0, "ImageFilterAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 4022
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4023
    iget v0, p0, viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4024
    iget v0, p0, type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4025
    iget v0, p0, arg1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4026
    iget v0, p0, arg2:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4027
    iget v0, p0, arg3:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4028
    iget v0, p0, arg4:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4029
    iget v0, p0, arg5:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4030
    iget v0, p0, arg6:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4032
    return-void
.end method
