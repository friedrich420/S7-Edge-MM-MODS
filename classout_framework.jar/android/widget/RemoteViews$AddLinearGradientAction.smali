.class Landroid/widget/RemoteViews$AddLinearGradientAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddLinearGradientAction"
.end annotation


# static fields
.field public static final TAG:I = 0x19


# instance fields
.field alphas:[F

.field angle:F

.field blendingOpacity:F

.field colors:[I

.field final methodName:Ljava/lang/String;

.field positions:[F

.field scale:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V
    .registers 10
    .param p2, "viewId"    # I
    .param p3, "angle"    # F
    .param p4, "scale"    # F
    .param p5, "colors"    # [I
    .param p6, "alphas"    # [F
    .param p7, "positions"    # [F
    .param p8, "blendingOpacity"    # F

    .prologue
    .line 1920
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1969
    const-string v0, "addLinearGradientTextEffect"

    iput-object v0, p0, methodName:Ljava/lang/String;

    .line 1921
    iput p2, p0, viewId:I

    .line 1922
    iput p3, p0, angle:F

    .line 1923
    iput p4, p0, scale:F

    .line 1924
    iput-object p5, p0, colors:[I

    .line 1925
    iput-object p6, p0, alphas:[F

    .line 1926
    iput-object p7, p0, positions:[F

    .line 1927
    iput p8, p0, blendingOpacity:F

    .line 1928
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1930
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1969
    const-string v0, "addLinearGradientTextEffect"

    iput-object v0, p0, methodName:Ljava/lang/String;

    .line 1931
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, viewId:I

    .line 1932
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, angle:F

    .line 1933
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, scale:F

    .line 1934
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, colors:[I

    .line 1935
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, alphas:[F

    .line 1936
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, positions:[F

    .line 1937
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, blendingOpacity:F

    .line 1938
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1953
    iget v1, p0, viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1954
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    .line 1956
    :goto_a
    return-void

    .line 1955
    :cond_b
    iget v1, p0, angle:F

    iget v2, p0, scale:F

    iget-object v3, p0, colors:[I

    iget-object v4, p0, alphas:[F

    iget-object v5, p0, positions:[F

    iget v6, p0, blendingOpacity:F

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->addLinearGradientTextEffect(FF[I[F[FF)I

    goto :goto_a
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1959
    const-string v0, "AddLinearGradientAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1941
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    iget v0, p0, viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1943
    iget v0, p0, angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1944
    iget v0, p0, scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1945
    iget-object v0, p0, colors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1946
    iget-object v0, p0, alphas:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1947
    iget-object v0, p0, positions:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1948
    iget v0, p0, blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1949
    return-void
.end method
