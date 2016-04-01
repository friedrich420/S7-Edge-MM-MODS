.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, <init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, mSelfChange:Z

    .line 70
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_e
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    .line 72
    return-void
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .registers 4
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    .prologue
    .line 166
    if-eqz p2, :cond_9

    iget-object v0, p0, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 176
    move v1, p2

    .local v1, "i":I
    :goto_1
    add-int v2, p2, p3

    if-ge v1, v2, :cond_14

    .line 177
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_11

    .line 179
    const/4 v2, 0x1

    .line 182
    .end local v0    # "c":C
    :goto_10
    return v2

    .line 176
    .restart local v0    # "c":C
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "c":C
    :cond_14
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 140
    add-int/lit8 v1, p2, -0x1

    .line 141
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .line 142
    .local v2, "formatted":Ljava/lang/String;
    iget-object v7, p0, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 143
    const/4 v5, 0x0

    .line 144
    .local v5, "lastNonSeparator":C
    const/4 v3, 0x0

    .line 145
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 146
    .local v6, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v6, :cond_29

    .line 147
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 148
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 149
    if-eqz v5, :cond_22

    .line 150
    invoke-direct {p0, v5, v3}, getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 151
    const/4 v3, 0x0

    .line 153
    :cond_22
    move v5, v0

    .line 155
    :cond_23
    if-ne v4, v1, :cond_26

    .line 156
    const/4 v3, 0x1

    .line 146
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 159
    .end local v0    # "c":C
    :cond_29
    if-eqz v5, :cond_2f

    .line 160
    invoke-direct {p0, v5, v3}, getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 162
    :cond_2f
    return-object v2
.end method

.method private stopFormatting()V
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, mStopFormatting:Z

    .line 172
    iget-object v0, p0, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 173
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .registers 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, mStopFormatting:Z

    if-eqz v2, :cond_13

    .line 101
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_11

    :goto_d
    iput-boolean v0, p0, mStopFormatting:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_52

    .line 131
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    move v0, v1

    .line 101
    goto :goto_d

    .line 104
    :cond_13
    :try_start_13
    iget-boolean v0, p0, mSelfChange:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_52

    if-nez v0, :cond_f

    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, "formatted":Ljava/lang/String;
    :try_start_18
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, p1, v0}, reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_1f} :catch_55
    .catchall {:try_start_18 .. :try_end_1f} :catchall_52

    move-result-object v3

    .line 119
    :goto_20
    if-eqz v3, :cond_49

    .line 120
    :try_start_22
    iget-object v0, p0, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v7

    .line 121
    .local v7, "rememberedPos":I
    const/4 v0, 0x1

    iput-boolean v0, p0, mSelfChange:Z

    .line 122
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 126
    invoke-static {p1, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 128
    :cond_46
    const/4 v0, 0x0

    iput-boolean v0, p0, mSelfChange:Z

    .line 130
    .end local v7    # "rememberedPos":I
    :cond_49
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    :try_end_51
    .catchall {:try_start_22 .. :try_end_51} :catchall_52

    goto :goto_f

    .line 99
    .end local v3    # "formatted":Ljava/lang/String;
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    .restart local v3    # "formatted":Ljava/lang/String;
    :catch_55
    move-exception v6

    .line 115
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_56
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_52

    goto :goto_20
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 77
    iget-boolean v0, p0, mSelfChange:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, mStopFormatting:Z

    if-eqz v0, :cond_9

    .line 84
    :cond_8
    :goto_8
    return-void

    .line 81
    :cond_9
    if-lez p3, :cond_8

    invoke-direct {p0, p1, p2, p3}, hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    invoke-direct {p0}, stopFormatting()V

    goto :goto_8
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 88
    iget-boolean v0, p0, mSelfChange:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, mStopFormatting:Z

    if-eqz v0, :cond_9

    .line 95
    :cond_8
    :goto_8
    return-void

    .line 92
    :cond_9
    if-lez p4, :cond_8

    invoke-direct {p0, p1, p2, p4}, hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    invoke-direct {p0}, stopFormatting()V

    goto :goto_8
.end method
