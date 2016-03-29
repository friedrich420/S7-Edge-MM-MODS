.class public Lcom/android/settingslib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# direct methods
.method private static createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "gmtOffsetString"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "offsetMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "gmt"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v0
.end method

.method private static getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    .line 213
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "ZZZZ"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 215
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 219
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 220
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 222
    return-object v2

    .line 219
    .end local v3    # "isRtl":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 220
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1
.end method

.method private static getZoneDisplayName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;
    .param p3, "preferLongName"    # Z

    .prologue
    .line 152
    if-eqz p3, :cond_1

    .line 153
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "zoneNameString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 155
    .end local v0    # "zoneNameString":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneExemplarLocation(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "zoneNameString":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getZoneExemplarLocation(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/TimeZoneNames;->getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 206
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 208
    .local v0, "daylight":Z
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getZonesList(Landroid/content/Context;)Ljava/util/List;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    .line 73
    .local v14, "locale":Ljava/util/Locale;
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 91
    .local v16, "now":Ljava/util/Date;
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/datetime/ZoneGetter;->readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 94
    .local v19, "olsonIdsToDisplay":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    .line 95
    .local v12, "localZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v14}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v18, v4, v8

    .line 96
    .local v18, "olsonId":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 101
    .end local v18    # "olsonId":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    .line 102
    .local v13, "localZoneNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 103
    .local v11, "localLongNamesAreAmbiguous":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 104
    .restart local v18    # "olsonId":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 105
    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 106
    .local v21, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 107
    .local v22, "zoneLongName":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 108
    .local v15, "longNameIsUnique":Z
    if-nez v15, :cond_1

    .line 109
    const/4 v11, 0x1

    .line 116
    .end local v15    # "longNameIsUnique":Z
    .end local v18    # "olsonId":Ljava/lang/String;
    .end local v21    # "tz":Ljava/util/TimeZone;
    .end local v22    # "zoneLongName":Ljava/lang/String;
    :cond_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v23, "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 118
    .restart local v18    # "olsonId":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 121
    .restart local v21    # "tz":Ljava/util/TimeZone;
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 122
    .local v9, "isLocalZoneId":Z
    if-eqz v9, :cond_3

    if-nez v11, :cond_3

    const/16 v20, 0x1

    .line 123
    .local v20, "preferLongName":Z
    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v14, v0, v1, v2}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneDisplayName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "displayName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "gmtOffsetString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v17

    .line 127
    .local v17, "offsetMillis":I
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v7, v6, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v5

    .line 129
    .local v5, "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    .end local v5    # "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v7    # "gmtOffsetString":Ljava/lang/String;
    .end local v17    # "offsetMillis":I
    .end local v20    # "preferLongName":Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_2

    .line 131
    .end local v9    # "isLocalZoneId":Z
    .end local v18    # "olsonId":Ljava/lang/String;
    .end local v21    # "tz":Ljava/util/TimeZone;
    :cond_4
    return-object v23
.end method

.method private static readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_DisableIsraelCountry"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$xml;->timezones_mea:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 177
    .local v4, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 180
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    .line 181
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 182
    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 183
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 202
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_1
    :goto_3
    return-object v2

    .line 175
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$xml;->timezones:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 186
    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 197
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 198
    .local v3, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "ZoneGetter"

    const-string v6, "Ill-formatted timezones.xml file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 188
    .end local v3    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "timezone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 189
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "olsonId":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v1    # "olsonId":Ljava/lang/String;
    :cond_5
    :goto_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 193
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 199
    .end local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "ioe":Ljava/io/IOException;
    const-string v5, "ZoneGetter"

    const-string v6, "Unable to read timezones.xml file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 195
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v4    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_6
    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
