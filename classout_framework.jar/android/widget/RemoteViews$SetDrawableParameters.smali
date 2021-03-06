.class Landroid/widget/RemoteViews$SetDrawableParameters;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawableParameters"
.end annotation


# static fields
.field public static final TAG:I = 0x3


# instance fields
.field alpha:I

.field colorFilter:I

.field filterMode:Landroid/graphics/PorterDuff$Mode;

.field level:I

.field targetBackground:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V
    .registers 9
    .param p2, "id"    # I
    .param p3, "targetBackground"    # Z
    .param p4, "alpha"    # I
    .param p5, "colorFilter"    # I
    .param p6, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p7, "level"    # I

    .prologue
    .line 972
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 973
    iput p2, p0, viewId:I

    .line 974
    iput-boolean p3, p0, targetBackground:Z

    .line 975
    iput p4, p0, alpha:I

    .line 976
    iput p5, p0, colorFilter:I

    .line 977
    iput-object p6, p0, filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 978
    iput p7, p0, level:I

    .line 979
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 8
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 981
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v4}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, viewId:I

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3d

    move v1, v2

    :goto_15
    iput-boolean v1, p0, targetBackground:Z

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, alpha:I

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, colorFilter:I

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    move v0, v2

    .line 987
    .local v0, "hasMode":Z
    :goto_2a
    if-eqz v0, :cond_41

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 992
    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, level:I

    .line 993
    return-void

    .end local v0    # "hasMode":Z
    :cond_3d
    move v1, v3

    .line 983
    goto :goto_15

    :cond_3f
    move v0, v3

    .line 986
    goto :goto_2a

    .line 990
    .restart local v0    # "hasMode":Z
    :cond_41
    iput-object v4, p0, filterMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_36
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    const/4 v6, -0x1

    .line 1012
    iget v3, p0, viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1013
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_a

    .line 1036
    :cond_9
    :goto_9
    return-void

    .line 1016
    :cond_a
    const/4 v2, 0x0

    .line 1017
    .local v2, "targetDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, targetBackground:Z

    if-eqz v3, :cond_3f

    .line 1018
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1024
    :cond_13
    :goto_13
    if-eqz v2, :cond_9

    .line 1026
    iget v3, p0, alpha:I

    if-eq v3, v6, :cond_22

    .line 1027
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, alpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1029
    :cond_22
    iget-object v3, p0, filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_31

    .line 1030
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, colorFilter:I

    iget-object v5, p0, filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1032
    :cond_31
    iget v3, p0, level:I

    if-eq v3, v6, :cond_9

    .line 1033
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, level:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_9

    .line 1019
    :cond_3f
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_13

    move-object v0, v1

    .line 1020
    check-cast v0, Landroid/widget/ImageView;

    .line 1021
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_13
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1039
    const-string v0, "SetDrawableParameters"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 996
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    iget v0, p0, viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    iget-boolean v0, p0, targetBackground:Z

    if-eqz v0, :cond_33

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    iget v0, p0, alpha:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    iget v0, p0, colorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget-object v0, p0, filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_35

    .line 1002
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    iget-object v0, p0, filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1007
    :goto_2d
    iget v0, p0, level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    return-void

    :cond_33
    move v0, v2

    .line 998
    goto :goto_10

    .line 1005
    :cond_35
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d
.end method
