.class Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatWindowMode"
.end annotation


# instance fields
.field mOption:I

.field mType:I

.field mZone:I

.field final synthetic this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;III)V
    .registers 5
    .param p2, "type"    # I
    .param p3, "zone"    # I
    .param p4, "option"    # I

    .prologue
    .line 1103
    iput-object p1, p0, this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    iput p2, p0, mType:I

    .line 1105
    iput p3, p0, mZone:I

    .line 1106
    iput p4, p0, mOption:I

    .line 1107
    return-void
.end method


# virtual methods
.method getCurrentMode()I
    .registers 3

    .prologue
    .line 1180
    invoke-virtual {p0}, getZone()I

    move-result v0

    invoke-virtual {p0}, getMode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, getOption()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getMode()I
    .registers 3

    .prologue
    .line 1110
    const/4 v0, 0x0

    .line 1111
    .local v0, "mode":I
    iget v1, p0, mType:I

    if-nez v1, :cond_8

    .line 1112
    const/high16 v0, 0x1000000

    .line 1116
    :goto_7
    return v0

    .line 1114
    :cond_8
    const/high16 v0, 0x2000000

    goto :goto_7
.end method

.method getOption()I
    .registers 3

    .prologue
    .line 1151
    const/4 v0, 0x0

    .line 1152
    .local v0, "option":I
    iget v1, p0, mOption:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 1153
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1155
    :cond_a
    iget v1, p0, mOption:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    .line 1156
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 1158
    :cond_13
    iget v1, p0, mOption:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1c

    .line 1159
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 1161
    :cond_1c
    iget v1, p0, mOption:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_25

    .line 1162
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 1164
    :cond_25
    iget v1, p0, mOption:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2e

    .line 1165
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1167
    :cond_2e
    iget v1, p0, mOption:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_37

    .line 1168
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 1170
    :cond_37
    iget v1, p0, mOption:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3f

    .line 1171
    or-int/lit16 v0, v0, 0x1000

    .line 1173
    :cond_3f
    iget v1, p0, mOption:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_47

    .line 1174
    or-int/lit16 v0, v0, 0x800

    .line 1176
    :cond_47
    return v0
.end method

.method getZone()I
    .registers 3

    .prologue
    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, "zone":I
    iget v1, p0, mZone:I

    packed-switch v1, :pswitch_data_1a

    .line 1144
    :pswitch_6
    const/4 v0, 0x0

    .line 1147
    :goto_7
    return v0

    .line 1123
    :pswitch_8
    const/16 v0, 0xf

    .line 1124
    goto :goto_7

    .line 1126
    :pswitch_b
    const/4 v0, 0x3

    .line 1127
    goto :goto_7

    .line 1129
    :pswitch_d
    const/16 v0, 0xc

    .line 1130
    goto :goto_7

    .line 1132
    :pswitch_10
    const/4 v0, 0x1

    .line 1133
    goto :goto_7

    .line 1135
    :pswitch_12
    const/4 v0, 0x2

    .line 1136
    goto :goto_7

    .line 1138
    :pswitch_14
    const/4 v0, 0x4

    .line 1139
    goto :goto_7

    .line 1141
    :pswitch_16
    const/16 v0, 0x8

    .line 1142
    goto :goto_7

    .line 1121
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_12
        :pswitch_b
        :pswitch_14
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_16
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
