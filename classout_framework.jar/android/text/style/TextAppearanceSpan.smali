.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I

.field private final mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextColorLink:Landroid/content/res/ColorStateList;

.field private final mTextSize:I

.field private final mTypeface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I
    .param p3, "colorList"    # I

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 59
    sget-object v4, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 65
    .local v2, "textColor":Landroid/content/res/ColorStateList;
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    .line 67
    const/4 v4, -0x1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mTextSize:I

    .line 70
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, mStyle:I

    .line 71
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "family":Ljava/lang/String;
    if-eqz v1, :cond_46

    .line 73
    iput-object v1, p0, mTypeface:Ljava/lang/String;

    .line 96
    :goto_2e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    if-ltz p3, :cond_43

    .line 99
    const v4, 0x1030005

    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    :cond_43
    iput-object v2, p0, mTextColor:Landroid/content/res/ColorStateList;

    .line 107
    return-void

    .line 75
    :cond_46
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 77
    .local v3, "tf":I
    packed-switch v3, :pswitch_data_64

    .line 91
    const/4 v4, 0x0

    iput-object v4, p0, mTypeface:Ljava/lang/String;

    goto :goto_2e

    .line 79
    :pswitch_52
    const-string/jumbo v4, "sans"

    iput-object v4, p0, mTypeface:Ljava/lang/String;

    goto :goto_2e

    .line 83
    :pswitch_58
    const-string/jumbo v4, "serif"

    iput-object v4, p0, mTypeface:Ljava/lang/String;

    goto :goto_2e

    .line 87
    :pswitch_5e
    const-string/jumbo v4, "monospace"

    iput-object v4, p0, mTypeface:Ljava/lang/String;

    goto :goto_2e

    .line 77
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_52
        :pswitch_58
        :pswitch_5e
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mTypeface:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mStyle:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mTextSize:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 127
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, mTextColor:Landroid/content/res/ColorStateList;

    .line 131
    :goto_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 132
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    .line 136
    :goto_36
    return-void

    .line 129
    :cond_37
    iput-object v1, p0, mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_26

    .line 134
    :cond_3a
    iput-object v1, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_36
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "color"    # Landroid/content/res/ColorStateList;
    .param p5, "linkColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 115
    iput-object p1, p0, mTypeface:Ljava/lang/String;

    .line 116
    iput p2, p0, mStyle:I

    .line 117
    iput p3, p0, mTextSize:I

    .line 118
    iput-object p4, p0, mTextColor:Landroid/content/res/ColorStateList;

    .line 119
    iput-object p5, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    .line 120
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, mTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .prologue
    .line 144
    const/16 v0, 0x11

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, mTextSize:I

    return v0
.end method

.method public getTextStyle()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0, p1}, updateMeasureState(Landroid/text/TextPaint;)V

    .line 218
    iget-object v0, p0, mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_13

    .line 219
    iget-object v0, p0, mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 222
    :cond_13
    iget-object v0, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_21

    .line 223
    iget-object v0, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 225
    :cond_21
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 6
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 229
    iget-object v3, p0, mTypeface:Ljava/lang/String;

    if-nez v3, :cond_8

    iget v3, p0, mStyle:I

    if-eqz v3, :cond_3c

    .line 230
    :cond_8
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 231
    .local v2, "tf":Landroid/graphics/Typeface;
    const/4 v1, 0x0

    .line 233
    .local v1, "style":I
    if-eqz v2, :cond_13

    .line 234
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 237
    :cond_13
    iget v3, p0, mStyle:I

    or-int/2addr v1, v3

    .line 239
    iget-object v3, p0, mTypeface:Ljava/lang/String;

    if-eqz v3, :cond_47

    .line 240
    iget-object v3, p0, mTypeface:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 247
    :goto_20
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v1, v3

    .line 249
    .local v0, "fake":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_30

    .line 250
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 253
    :cond_30
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_39

    .line 254
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 257
    :cond_39
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 260
    .end local v0    # "fake":I
    .end local v1    # "style":I
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_3c
    iget v3, p0, mTextSize:I

    if-lez v3, :cond_46

    .line 261
    iget v3, p0, mTextSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 263
    :cond_46
    return-void

    .line 241
    .restart local v1    # "style":I
    .restart local v2    # "tf":Landroid/graphics/Typeface;
    :cond_47
    if-nez v2, :cond_4e

    .line 242
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_20

    .line 244
    :cond_4e
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_20
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 153
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, mTypeface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget v0, p0, mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    :goto_1d
    iget-object v0, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2e

    .line 167
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_29
    return-void

    .line 164
    :cond_2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 170
    :cond_2e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29
.end method
