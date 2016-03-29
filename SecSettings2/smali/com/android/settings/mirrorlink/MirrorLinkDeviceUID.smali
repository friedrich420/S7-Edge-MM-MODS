.class public Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLinkDeviceUID.java"


# instance fields
.field private mTextViewNumber:Landroid/widget/TextView;

.field private mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    return-void
.end method

.method private updateDeviceUID()V
    .locals 20

    .prologue
    .line 67
    const/4 v12, 0x0

    .line 68
    .local v12, "sn":Ljava/lang/String;
    const-string v14, " "

    .line 69
    .local v14, "uuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    if-eqz v15, :cond_5

    .line 70
    const-string v15, "ril.serialnumber"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 71
    if-eqz v12, :cond_0

    const-string v15, "00000000000"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 72
    :cond_0
    const-string v15, "ro.serialno"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 74
    :cond_1
    if-eqz v12, :cond_4

    .line 76
    :try_start_0
    const-string v15, "SHA-1"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 78
    .local v8, "md":Ljava/security/MessageDigest;
    const-string v2, "6ba7b8129dad11d180b400c04fd430c8"

    .line 80
    .local v2, "NAMESPACE_OID":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    new-array v3, v15, [B

    .line 81
    .local v3, "NameSpace_OID":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v15, v3

    if-ge v6, v15, :cond_2

    .line 82
    mul-int/lit8 v15, v6, 0x2

    mul-int/lit8 v16, v6, 0x2

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v3, v6

    .line 81
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    :cond_2
    const-string v15, "UTF-8"

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 85
    .local v4, "SerialNumber":[B
    array-length v15, v3

    array-length v0, v4

    move/from16 v16, v0

    add-int v15, v15, v16

    new-array v7, v15, [B

    .line 86
    .local v7, "input":[B
    const/4 v15, 0x0

    const/16 v16, 0x0

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v15, v7, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 87
    const/4 v15, 0x0

    array-length v0, v3

    move/from16 v16, v0

    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v15, v7, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 88
    invoke-virtual {v8, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 89
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    .line 90
    .local v10, "result":[B
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v11, "sb":Ljava/lang/StringBuffer;
    const/16 v15, 0x8

    aget-byte v13, v10, v15

    .line 93
    .local v13, "temp":B
    and-int/lit8 v15, v13, 0x3f

    int-to-byte v13, v15

    .line 94
    const/16 v15, 0x8

    or-int/lit16 v0, v13, 0x80

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v10, v15

    .line 95
    const/4 v6, 0x0

    :goto_1
    array-length v15, v10

    if-ge v6, v15, :cond_3

    .line 96
    aget-byte v15, v10, v6

    and-int/lit16 v15, v15, 0xff

    add-int/lit16 v15, v15, 0x100

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "plain":Ljava/lang/String;
    const/16 v15, 0xc

    const/16 v16, 0xd

    const-string v17, "5"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 101
    const-string v15, "%s-%s-%s-%s-%s"

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x8

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/16 v18, 0xc

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const/16 v18, 0x10

    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const/16 v18, 0x14

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 109
    .end local v2    # "NAMESPACE_OID":Ljava/lang/String;
    .end local v3    # "NameSpace_OID":[B
    .end local v4    # "SerialNumber":[B
    .end local v6    # "i":I
    .end local v7    # "input":[B
    .end local v8    # "md":Ljava/security/MessageDigest;
    .end local v9    # "plain":Ljava/lang/String;
    .end local v10    # "result":[B
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    .end local v13    # "temp":B
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_5
    return-void

    .line 103
    :catch_0
    move-exception v5

    .line 104
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 105
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v5

    .line 106
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->setHasOptionsMenu(Z)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 55
    const v1, 0x7f04013c

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 57
    const v1, 0x7f0d035d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0d035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLinkDeviceUID;->updateDeviceUID()V

    .line 63
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 131
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 116
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 126
    return-void
.end method
