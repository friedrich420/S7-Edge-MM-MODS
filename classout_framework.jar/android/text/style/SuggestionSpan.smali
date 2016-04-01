.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CORRECTION:I = 0x4

.field public static final FLAG_EASY_CORRECT:I = 0x1

.field public static final FLAG_MISSPELLED:I = 0x2

.field public static final SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"

.field private static final TAG:Ljava/lang/String; = "SuggestionSpan"


# instance fields
.field private mAutoCorrectionUnderlineColor:I

.field private mAutoCorrectionUnderlineThickness:F

.field private mEasyCorrectUnderlineColor:I

.field private mEasyCorrectUnderlineThickness:F

.field private mFlags:I

.field private final mHashCode:I

.field private final mLocaleString:Ljava/lang/String;

.field private mMisspelledUnderlineColor:I

.field private mMisspelledUnderlineThickness:F

.field private final mNotificationTargetClassName:Ljava/lang/String;

.field private final mNotificationTargetPackageName:Ljava/lang/String;

.field private final mSuggestions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 299
    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "suggestions"    # [Ljava/lang/String;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p5, "notificationTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 130
    const/4 v1, 0x5

    array-length v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    .local v0, "N":I
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, mSuggestions:[Ljava/lang/String;

    .line 132
    iput p4, p0, mFlags:I

    .line 133
    if-eqz p2, :cond_3b

    .line 134
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mLocaleString:Ljava/lang/String;

    .line 142
    :goto_1b
    if-eqz p1, :cond_5a

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mNotificationTargetPackageName:Ljava/lang/String;

    .line 148
    :goto_23
    if-eqz p5, :cond_5e

    .line 149
    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mNotificationTargetClassName:Ljava/lang/String;

    .line 153
    :goto_2b
    iget-object v1, p0, mSuggestions:[Ljava/lang/String;

    iget-object v2, p0, mLocaleString:Ljava/lang/String;

    iget-object v3, p0, mNotificationTargetClassName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mHashCode:I

    .line 155
    invoke-direct {p0, p1}, initStyle(Landroid/content/Context;)V

    .line 156
    return-void

    .line 135
    :cond_3b
    if-eqz p1, :cond_4e

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mLocaleString:Ljava/lang/String;

    goto :goto_1b

    .line 138
    :cond_4e
    const-string v1, "SuggestionSpan"

    const-string v2, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, ""

    iput-object v1, p0, mLocaleString:Ljava/lang/String;

    goto :goto_1b

    .line 145
    :cond_5a
    const/4 v1, 0x0

    iput-object v1, p0, mNotificationTargetPackageName:Ljava/lang/String;

    goto :goto_23

    .line 151
    :cond_5e
    const-string v1, ""

    iput-object v1, p0, mNotificationTargetClassName:Ljava/lang/String;

    goto :goto_2b
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSuggestions:[Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mFlags:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mLocaleString:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mNotificationTargetClassName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mNotificationTargetPackageName:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mHashCode:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mEasyCorrectUnderlineColor:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, mEasyCorrectUnderlineThickness:F

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mMisspelledUnderlineColor:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, mMisspelledUnderlineThickness:F

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mAutoCorrectionUnderlineColor:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, mAutoCorrectionUnderlineThickness:F

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .registers 10
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 117
    return-void
.end method

.method private static hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "notificationTargetClassName"    # Ljava/lang/String;

    .prologue
    .line 295
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    .line 159
    if-nez p1, :cond_15

    .line 160
    iput v3, p0, mMisspelledUnderlineThickness:F

    .line 161
    iput v3, p0, mEasyCorrectUnderlineThickness:F

    .line 162
    iput v3, p0, mAutoCorrectionUnderlineThickness:F

    .line 163
    iput v4, p0, mMisspelledUnderlineColor:I

    .line 164
    iput v4, p0, mEasyCorrectUnderlineColor:I

    .line 165
    iput v4, p0, mAutoCorrectionUnderlineColor:I

    .line 192
    :goto_14
    return-void

    .line 169
    :cond_15
    const v0, 0x1160006

    .line 170
    .local v0, "defStyleAttr":I
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v7, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 172
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, mMisspelledUnderlineThickness:F

    .line 174
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, mMisspelledUnderlineColor:I

    .line 177
    const v0, 0x1160005

    .line 178
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v7, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, mEasyCorrectUnderlineThickness:F

    .line 182
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, mEasyCorrectUnderlineColor:I

    .line 185
    const v0, 0x1160007

    .line 186
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v7, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, mAutoCorrectionUnderlineThickness:F

    .line 190
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, mAutoCorrectionUnderlineColor:I

    goto :goto_14
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 282
    instance-of v1, p1, Landroid/text/style/SuggestionSpan;

    if-eqz v1, :cond_10

    .line 283
    check-cast p1, Landroid/text/style/SuggestionSpan;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, hashCode()I

    move-result v1

    iget v2, p0, mHashCode:I

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 285
    :cond_10
    return v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, mFlags:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, mLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTargetClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, mNotificationTargetClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .prologue
    .line 277
    const/16 v0, 0x13

    return v0
.end method

.method public getSuggestions()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlineColor()I
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    iget v5, p0, mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1e

    move v2, v3

    .line 338
    .local v2, "misspelled":Z
    :goto_9
    iget v5, p0, mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_20

    move v1, v3

    .line 339
    .local v1, "easy":Z
    :goto_10
    iget v5, p0, mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_22

    move v0, v3

    .line 340
    .local v0, "autoCorrection":Z
    :goto_17
    if-eqz v1, :cond_27

    .line 341
    if-nez v2, :cond_24

    .line 342
    iget v4, p0, mEasyCorrectUnderlineColor:I

    .line 349
    :cond_1d
    :goto_1d
    return v4

    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_1e
    move v2, v4

    .line 337
    goto :goto_9

    .restart local v2    # "misspelled":Z
    :cond_20
    move v1, v4

    .line 338
    goto :goto_10

    .restart local v1    # "easy":Z
    :cond_22
    move v0, v4

    .line 339
    goto :goto_17

    .line 344
    .restart local v0    # "autoCorrection":Z
    :cond_24
    iget v4, p0, mMisspelledUnderlineColor:I

    goto :goto_1d

    .line 346
    :cond_27
    if-eqz v0, :cond_1d

    .line 347
    iget v4, p0, mAutoCorrectionUnderlineColor:I

    goto :goto_1d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 290
    iget v0, p0, mHashCode:I

    return v0
.end method

.method public notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "original"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 358
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_b

    iget-object v2, p0, mNotificationTargetClassName:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 386
    :cond_b
    :goto_b
    return-void

    .line 365
    :cond_c
    iget-object v2, p0, mSuggestions:[Ljava/lang/String;

    if-eqz v2, :cond_17

    if-ltz p3, :cond_17

    iget-object v2, p0, mSuggestions:[Ljava/lang/String;

    array-length v2, v2

    if-lt p3, v2, :cond_3d

    .line 366
    :cond_17
    const-string v2, "SuggestionSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to notify the suggestion as the index is out of range index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mSuggestions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 373
    :cond_3d
    iget-object v2, p0, mNotificationTargetPackageName:Ljava/lang/String;

    if-eqz v2, :cond_68

    .line 374
    iget-object v2, p0, mNotificationTargetPackageName:Ljava/lang/String;

    iget-object v3, p0, mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v2, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "before"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v2, "after"

    iget-object v3, p0, mSuggestions:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v2, "hashcode"

    invoke-virtual {p0}, hashCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_b

    .line 381
    :cond_68
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 382
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 383
    invoke-virtual {v0, p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V

    goto :goto_b
.end method

.method public setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 241
    iput p1, p0, mFlags:I

    .line 242
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 8
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    iget v5, p0, mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_23

    move v2, v3

    .line 315
    .local v2, "misspelled":Z
    :goto_9
    iget v5, p0, mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_25

    move v1, v3

    .line 316
    .local v1, "easy":Z
    :goto_10
    iget v5, p0, mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_27

    move v0, v3

    .line 317
    .local v0, "autoCorrection":Z
    :goto_17
    if-eqz v1, :cond_35

    .line 318
    if-nez v2, :cond_29

    .line 319
    iget v3, p0, mEasyCorrectUnderlineColor:I

    iget v4, p0, mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 328
    :cond_22
    :goto_22
    return-void

    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_23
    move v2, v4

    .line 314
    goto :goto_9

    .restart local v2    # "misspelled":Z
    :cond_25
    move v1, v4

    .line 315
    goto :goto_10

    .restart local v1    # "easy":Z
    :cond_27
    move v0, v4

    .line 316
    goto :goto_17

    .line 320
    .restart local v0    # "autoCorrection":Z
    :cond_29
    iget v3, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v3, :cond_22

    .line 323
    iget v3, p0, mMisspelledUnderlineColor:I

    iget v4, p0, mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_22

    .line 325
    :cond_35
    if-eqz v0, :cond_22

    .line 326
    iget v3, p0, mAutoCorrectionUnderlineColor:I

    iget v4, p0, mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_22
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1, p2}, writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 252
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 256
    iget-object v0, p0, mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 257
    iget v0, p0, mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v0, p0, mLocaleString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, mNotificationTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget v0, p0, mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 264
    iget v0, p0, mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 266
    iget v0, p0, mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 268
    return-void
.end method
