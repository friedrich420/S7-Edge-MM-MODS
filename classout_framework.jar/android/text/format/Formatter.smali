.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$BytesResult;
    }
.end annotation


# static fields
.field public static final FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final FLAG_SHORTER:I = 0x1

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 58
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_19

    .line 59
    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    .end local p1    # "source":Ljava/lang/String;
    :cond_19
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .registers 21
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sizeBytes"    # J
    .param p3, "flags"    # I

    .prologue
    .line 101
    move-wide/from16 v0, p1

    long-to-float v4, v0

    .line 102
    .local v4, "result":F
    const v10, 0x1040078

    .line 103
    .local v10, "suffix":I
    const-wide/16 v2, 0x1

    .line 104
    .local v2, "mult":J
    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v12, v4, v12

    if-lez v12, :cond_16

    .line 105
    const v10, 0x1040079

    .line 106
    const-wide/16 v2, 0x400

    .line 107
    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v4, v12

    .line 109
    :cond_16
    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v12, v4, v12

    if-lez v12, :cond_25

    .line 110
    const v10, 0x104007a

    .line 111
    const-wide/32 v2, 0x100000

    .line 112
    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v4, v12

    .line 114
    :cond_25
    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v12, v4, v12

    if-lez v12, :cond_34

    .line 115
    const v10, 0x104007b

    .line 116
    const-wide/32 v2, 0x40000000

    .line 117
    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v4, v12

    .line 119
    :cond_34
    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v12, v4, v12

    if-lez v12, :cond_45

    .line 120
    const v10, 0x104007c

    .line 121
    const-wide v2, 0x10000000000L

    .line 122
    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v4, v12

    .line 124
    :cond_45
    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v12, v4, v12

    if-lez v12, :cond_53

    .line 125
    const v10, 0x104007d

    .line 126
    const-wide/high16 v2, 0x4000000000000L

    .line 127
    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v4, v12

    .line 134
    :cond_53
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v4, v12

    if-gez v12, :cond_7d

    .line 135
    const/16 v5, 0x64

    .line 136
    .local v5, "roundFactor":I
    const-string v6, "%.2f"

    .line 157
    .local v6, "roundFormat":Ljava/lang/String;
    :goto_5d
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "roundedString":Ljava/lang/String;
    and-int/lit8 v12, p3, 0x2

    if-nez v12, :cond_a8

    const-wide/16 v8, 0x0

    .line 165
    .local v8, "roundedBytes":J
    :goto_71
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, "units":Ljava/lang/String;
    new-instance v12, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v12, v7, v11, v8, v9}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v12

    .line 137
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    .end local v7    # "roundedString":Ljava/lang/String;
    .end local v8    # "roundedBytes":J
    .end local v11    # "units":Ljava/lang/String;
    :cond_7d
    const/high16 v12, 0x41200000    # 10.0f

    cmpg-float v12, v4, v12

    if-gez v12, :cond_91

    .line 138
    and-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_8c

    .line 139
    const/16 v5, 0xa

    .line 140
    .restart local v5    # "roundFactor":I
    const-string v6, "%.1f"

    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_5d

    .line 142
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    :cond_8c
    const/16 v5, 0x64

    .line 143
    .restart local v5    # "roundFactor":I
    const-string v6, "%.2f"

    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_5d

    .line 145
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    :cond_91
    const/high16 v12, 0x42c80000    # 100.0f

    cmpg-float v12, v4, v12

    if-gez v12, :cond_a4

    .line 146
    and-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_9f

    .line 147
    const/4 v5, 0x1

    .line 148
    .restart local v5    # "roundFactor":I
    const-string v6, "%.0f"

    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_5d

    .line 150
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    :cond_9f
    const/16 v5, 0x64

    .line 151
    .restart local v5    # "roundFactor":I
    const-string v6, "%.2f"

    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_5d

    .line 154
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    :cond_a4
    const/4 v5, 0x1

    .line 155
    .restart local v5    # "roundFactor":I
    const-string v6, "%.0f"

    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_5d

    .line 161
    .restart local v7    # "roundedString":Ljava/lang/String;
    :cond_a8
    int-to-float v12, v5

    mul-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v12, v2

    int-to-long v14, v5

    div-long v8, v12, v14

    goto :goto_71
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .prologue
    const/4 v4, 0x0

    .line 78
    if-nez p0, :cond_6

    .line 79
    const-string v1, ""

    .line 82
    :goto_5
    return-object v1

    .line 81
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v4}, formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 82
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const v1, 0x104007e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .registers 2
    .param p0, "ipv4Address"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    .line 197
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 199
    .local v4, "secondsLong":J
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 200
    .local v2, "minutes":I
    const-wide/32 v6, 0x15180

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1a

    .line 201
    const-wide/32 v6, 0x15180

    div-long v6, v4, v6

    long-to-int v0, v6

    .line 202
    const v6, 0x15180

    mul-int/2addr v6, v0

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 204
    :cond_1a
    const-wide/16 v6, 0xe10

    cmp-long v6, v4, v6

    if-ltz v6, :cond_29

    .line 205
    const-wide/16 v6, 0xe10

    div-long v6, v4, v6

    long-to-int v1, v6

    .line 206
    mul-int/lit16 v6, v1, 0xe10

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 208
    :cond_29
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-ltz v6, :cond_38

    .line 209
    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    long-to-int v2, v6

    .line 210
    mul-int/lit8 v6, v2, 0x3c

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 212
    :cond_38
    long-to-int v3, v4

    .line 214
    .local v3, "seconds":I
    const/4 v6, 0x2

    if-lt v0, v6, :cond_53

    .line 215
    add-int/lit8 v6, v1, 0xc

    div-int/lit8 v6, v6, 0x18

    add-int/2addr v0, v6

    .line 216
    const v6, 0x104007f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 245
    :goto_52
    return-object v6

    .line 217
    :cond_53
    if-lez v0, :cond_8a

    .line 218
    const/4 v6, 0x1

    if-ne v1, v6, :cond_71

    .line 219
    const v6, 0x1040081

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_52

    .line 221
    :cond_71
    const v6, 0x1040080

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_52

    .line 222
    :cond_8a
    const/4 v6, 0x2

    if-lt v1, v6, :cond_a4

    .line 223
    add-int/lit8 v6, v2, 0x1e

    div-int/lit8 v6, v6, 0x3c

    add-int/2addr v1, v6

    .line 224
    const v6, 0x1040082

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_52

    .line 225
    :cond_a4
    if-lez v1, :cond_dc

    .line 226
    const/4 v6, 0x1

    if-ne v2, v6, :cond_c2

    .line 227
    const v6, 0x1040084

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_52

    .line 230
    :cond_c2
    const v6, 0x1040083

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_52

    .line 232
    :cond_dc
    const/4 v6, 0x2

    if-lt v2, v6, :cond_f7

    .line 233
    add-int/lit8 v6, v3, 0x1e

    div-int/lit8 v6, v6, 0x3c

    add-int/2addr v2, v6

    .line 234
    const v6, 0x1040085

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_52

    .line 235
    :cond_f7
    if-lez v2, :cond_130

    .line 236
    const/4 v6, 0x1

    if-ne v3, v6, :cond_116

    .line 237
    const v6, 0x1040088

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_52

    .line 240
    :cond_116
    const v6, 0x1040087

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_52

    .line 242
    :cond_130
    const/4 v6, 0x1

    if-ne v3, v6, :cond_146

    .line 243
    const v6, 0x104008a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_52

    .line 245
    :cond_146
    const v6, 0x1040089

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_52
.end method

.method public static formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    const-wide/16 v8, 0x1

    const-wide/32 v6, 0xea60

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 258
    add-long v2, p1, v6

    sub-long/2addr v2, v8

    div-long v0, v2, v6

    .line 260
    .local v0, "minutesRoundedUp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_22

    .line 261
    const v2, 0x1040085

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 266
    :goto_21
    return-object v2

    .line 262
    :cond_22
    cmp-long v2, v0, v8

    if-nez v2, :cond_36

    .line 263
    const v2, 0x1040086

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 266
    :cond_36
    mul-long v2, v0, v6

    invoke-static {p0, v2, v3}, formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_21
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .prologue
    const/4 v5, 0x1

    .line 91
    if-nez p0, :cond_6

    .line 92
    const-string v1, ""

    .line 95
    :goto_5
    return-object v1

    .line 94
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v5}, formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 95
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const v1, 0x104007e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method
