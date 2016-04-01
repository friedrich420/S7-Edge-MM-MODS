.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final NOTHING:[I

.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FINGER_HOVERED:I = 0x400

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 68
    const/16 v9, 0x16

    new-array v9, v9, [I

    fill-array-data v9, :array_8e

    sput-object v9, VIEW_STATE_IDS:[I

    .line 83
    sget-object v9, VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_1d

    .line 84
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 88
    :cond_1d
    sget-object v9, VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 89
    .local v4, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_4e

    .line 90
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 91
    .local v8, "viewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2d
    sget-object v9, VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_4b

    .line 92
    sget-object v9, VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_48

    .line 93
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 94
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 91
    :cond_48
    add-int/lit8 v2, v2, 0x2

    goto :goto_2d

    .line 89
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 99
    .end local v2    # "j":I
    .end local v8    # "viewState":I
    :cond_4e
    sget-object v9, VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 100
    .local v0, "NUM_BITS":I
    shl-int v9, v13, v0

    new-array v9, v9, [[I

    sput-object v9, VIEW_STATE_SETS:[[I

    .line 101
    const/4 v1, 0x0

    :goto_5a
    sget-object v9, VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_82

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 103
    .local v3, "numBits":I
    new-array v7, v3, [I

    .line 104
    .local v7, "set":[I
    const/4 v5, 0x0

    .line 105
    .local v5, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_67
    array-length v9, v4

    if-ge v2, v9, :cond_7b

    .line 106
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_78

    .line 107
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 105
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_78
    add-int/lit8 v2, v2, 0x2

    goto :goto_67

    .line 110
    :cond_7b
    sget-object v9, VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 128
    .end local v2    # "j":I
    .end local v3    # "numBits":I
    .end local v5    # "pos":I
    .end local v7    # "set":[I
    :cond_82
    new-array v9, v12, [I

    sput-object v9, WILD_CARD:[I

    .line 133
    new-array v9, v13, [I

    aput v12, v9, v12

    sput-object v9, NOTHING:[I

    return-void

    .line 68
    nop

    :array_8e
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
        0x11600bc
        0x400
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([I)Ljava/lang/String;
    .registers 5
    .param p0, "states"    # [I

    .prologue
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 248
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2f

    .line 250
    aget v3, p0, v1

    sparse-switch v3, :sswitch_data_34

    .line 248
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 252
    :sswitch_11
    const-string v3, "W "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 255
    :sswitch_17
    const-string v3, "P "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 258
    :sswitch_1d
    const-string v3, "S "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 261
    :sswitch_23
    const-string v3, "F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 264
    :sswitch_29
    const-string v3, "E "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 269
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 250
    :sswitch_data_34
    .sparse-switch
        0x101009c -> :sswitch_23
        0x101009d -> :sswitch_11
        0x101009e -> :sswitch_29
        0x10100a1 -> :sswitch_1d
        0x10100a7 -> :sswitch_17
    .end sparse-switch
.end method

.method public static get(I)[I
    .registers 3
    .param p0, "mask"    # I

    .prologue
    .line 116
    sget-object v0, VIEW_STATE_SETS:[[I

    array-length v0, v0

    if-lt p0, v0, :cond_d

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state set mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_d
    sget-object v0, VIEW_STATE_SETS:[[I

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static isWildCard([I)Z
    .registers 3
    .param p0, "stateSetOrSpec"    # [I

    .prologue
    const/4 v0, 0x0

    .line 141
    array-length v1, p0

    if-eqz v1, :cond_8

    aget v1, p0, v0

    if-nez v1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public static stateSetMatches([II)Z
    .registers 8
    .param p0, "stateSpec"    # [I
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    array-length v1, p0

    .line 213
    .local v1, "stateSpecSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_a

    .line 214
    aget v2, p0, v0

    .line 215
    .local v2, "stateSpecState":I
    if-nez v2, :cond_b

    .line 231
    .end local v2    # "stateSpecState":I
    :cond_a
    :goto_a
    return v3

    .line 219
    .restart local v2    # "stateSpecState":I
    :cond_b
    if-lez v2, :cond_11

    .line 220
    if-eq p1, v2, :cond_16

    move v3, v4

    .line 221
    goto :goto_a

    .line 225
    :cond_11
    neg-int v5, v2

    if-ne p1, v5, :cond_16

    move v3, v4

    .line 227
    goto :goto_a

    .line 213
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static stateSetMatches([I[I)Z
    .registers 13
    .param p0, "stateSpec"    # [I
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 152
    if-nez p1, :cond_e

    .line 153
    if-eqz p0, :cond_c

    invoke-static {p0}, isWildCard([I)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    move v8, v9

    .line 201
    :cond_d
    :goto_d
    return v8

    .line 155
    :cond_e
    array-length v6, p0

    .line 156
    .local v6, "stateSpecSize":I
    array-length v5, p1

    .line 157
    .local v5, "stateSetSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v6, :cond_39

    .line 158
    aget v7, p0, v1

    .line 159
    .local v7, "stateSpecState":I
    if-nez v7, :cond_19

    move v8, v9

    .line 161
    goto :goto_d

    .line 164
    :cond_19
    if-lez v7, :cond_2d

    .line 165
    const/4 v3, 0x1

    .line 171
    .local v3, "mustMatch":Z
    :goto_1c
    const/4 v0, 0x0

    .line 172
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1e
    if-ge v2, v5, :cond_26

    .line 173
    aget v4, p1, v2

    .line 174
    .local v4, "state":I
    if-nez v4, :cond_30

    .line 176
    if-nez v3, :cond_d

    .line 195
    .end local v4    # "state":I
    :cond_26
    :goto_26
    if-eqz v3, :cond_2a

    if-eqz v0, :cond_d

    .line 157
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 168
    .end local v0    # "found":Z
    .end local v2    # "j":I
    .end local v3    # "mustMatch":Z
    :cond_2d
    const/4 v3, 0x0

    .line 169
    .restart local v3    # "mustMatch":Z
    neg-int v7, v7

    goto :goto_1c

    .line 184
    .restart local v0    # "found":Z
    .restart local v2    # "j":I
    .restart local v4    # "state":I
    :cond_30
    if-ne v4, v7, :cond_36

    .line 185
    if-eqz v3, :cond_d

    .line 186
    const/4 v0, 0x1

    .line 188
    goto :goto_26

    .line 172
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .end local v0    # "found":Z
    .end local v2    # "j":I
    .end local v3    # "mustMatch":Z
    .end local v4    # "state":I
    .end local v7    # "stateSpecState":I
    :cond_39
    move v8, v9

    .line 201
    goto :goto_d
.end method

.method public static trimStateSet([II)[I
    .registers 5
    .param p0, "states"    # [I
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 235
    array-length v1, p0

    if-ne v1, p1, :cond_5

    .line 241
    .end local p0    # "states":[I
    :goto_4
    return-object p0

    .line 239
    .restart local p0    # "states":[I
    :cond_5
    new-array v0, p1, [I

    .line 240
    .local v0, "trimmedStates":[I
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    move-object p0, v0

    .line 241
    goto :goto_4
.end method
