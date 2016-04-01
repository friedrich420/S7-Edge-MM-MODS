.class Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatMultiWindowStyle"
.end annotation


# instance fields
.field mMode:I

.field mOption:I

.field mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mZone:I

.field final synthetic this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 5
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "mode"    # I

    .prologue
    .line 1012
    iput-object p1, p0, this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p2, p0, mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1014
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    iput v0, p0, mMode:I

    .line 1015
    and-int/lit8 v0, p3, 0xf

    iput v0, p0, mZone:I

    .line 1016
    const v0, 0xffff00

    and-int/2addr v0, p3

    iput v0, p0, mOption:I

    .line 1017
    return-void
.end method


# virtual methods
.method getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 4

    .prologue
    .line 1088
    iget-object v0, p0, mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1089
    iget-object v0, p0, mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, getZone()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1090
    iget-object v0, p0, mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, getOption()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1091
    iget-object v0, p0, mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method getOption()I
    .registers 4

    .prologue
    .line 1053
    const/4 v0, 0x0

    .line 1054
    .local v0, "option":I
    iget v1, p0, mOption:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 1055
    or-int/lit8 v0, v0, 0x1

    .line 1057
    :cond_a
    iget v1, p0, mOption:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    .line 1058
    or-int/lit8 v0, v0, 0x2

    .line 1060
    :cond_13
    iget v1, p0, mOption:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 1061
    or-int/lit8 v0, v0, 0x4

    .line 1063
    :cond_1c
    iget v1, p0, mOption:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_25

    .line 1064
    or-int/lit8 v0, v0, 0x8

    .line 1066
    :cond_25
    iget v1, p0, mOption:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2e

    .line 1067
    or-int/lit8 v0, v0, 0x10

    .line 1069
    :cond_2e
    iget v1, p0, mOption:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_37

    .line 1070
    or-int/lit8 v0, v0, 0x20

    .line 1072
    :cond_37
    iget v1, p0, mOption:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_3f

    .line 1073
    or-int/lit16 v0, v0, 0x200

    .line 1075
    :cond_3f
    iget v1, p0, mOption:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_47

    .line 1076
    or-int/lit16 v0, v0, 0x400

    .line 1078
    :cond_47
    iget v1, p0, mOption:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_4f

    .line 1079
    or-int/lit16 v0, v0, 0x800

    .line 1081
    :cond_4f
    iget v1, p0, mOption:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_58

    .line 1082
    or-int/lit16 v0, v0, 0x2000

    .line 1084
    :cond_58
    return v0
.end method

.method getType()I
    .registers 3

    .prologue
    .line 1020
    iget v0, p0, mMode:I

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_8

    .line 1021
    const/4 v0, 0x0

    .line 1028
    :goto_7
    return v0

    .line 1022
    :cond_8
    iget v0, p0, mMode:I

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_14

    iget v0, p0, mZone:I

    if-nez v0, :cond_14

    .line 1026
    const/4 v0, 0x2

    goto :goto_7

    .line 1028
    :cond_14
    const/4 v0, 0x1

    goto :goto_7
.end method

.method getZone()I
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1033
    iget v5, p0, mZone:I

    if-ne v5, v0, :cond_b

    .line 1048
    :goto_a
    return v0

    .line 1035
    :cond_b
    iget v0, p0, mZone:I

    const/16 v5, 0xc

    if-ne v0, v5, :cond_14

    .line 1036
    const/16 v0, 0xc

    goto :goto_a

    .line 1037
    :cond_14
    iget v0, p0, mZone:I

    if-ne v0, v1, :cond_1a

    move v0, v1

    .line 1038
    goto :goto_a

    .line 1039
    :cond_1a
    iget v0, p0, mZone:I

    if-ne v0, v2, :cond_20

    move v0, v2

    .line 1040
    goto :goto_a

    .line 1041
    :cond_20
    iget v0, p0, mZone:I

    if-ne v0, v3, :cond_26

    move v0, v3

    .line 1042
    goto :goto_a

    .line 1043
    :cond_26
    iget v0, p0, mZone:I

    if-ne v0, v4, :cond_2c

    move v0, v4

    .line 1044
    goto :goto_a

    .line 1045
    :cond_2c
    iget v0, p0, mZone:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_35

    .line 1046
    const/16 v0, 0xf

    goto :goto_a

    .line 1048
    :cond_35
    const/4 v0, 0x0

    goto :goto_a
.end method
