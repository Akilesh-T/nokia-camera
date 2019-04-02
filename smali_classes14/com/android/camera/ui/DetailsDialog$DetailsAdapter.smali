.class Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/DetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailsAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDecimalFormat:Ljava/text/DecimalFormat;

.field private final mDefaultLocale:Ljava/util/Locale;

.field private mHeightIndex:I

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDetails:Lcom/android/camera/data/MediaDetails;

.field private mWidthIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "details"    # Lcom/android/camera/data/MediaDetails;

    .prologue
    const/4 v2, -0x1

    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    .line 79
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 80
    iput v2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    .line 81
    iput v2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    .line 84
    iput-object p1, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mMediaDetails:Lcom/android/camera/data/MediaDetails;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/camera/data/MediaDetails;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->setDetails(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)V

    .line 88
    return-void
.end method

.method private setDetails(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "details"    # Lcom/android/camera/data/MediaDetails;

    .prologue
    .line 91
    const/4 v11, 0x1

    .line 92
    .local v11, "resolutionIsValid":Z
    const/4 v10, 0x0

    .line 93
    .local v10, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 95
    .local v4, "detail":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    .line 175
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 178
    .local v15, "valueObj":Ljava/lang/Object;
    if-nez v15, :cond_0

    .line 179
    const-string v18, "%s\'s value is Null"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 181
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 180
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v19, v20

    .line 179
    invoke-static/range {v18 .. v19}, Lcom/android/camera/ui/DetailsDialog;->access$000(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 186
    .end local v15    # "valueObj":Ljava/lang/Object;
    .local v14, "value":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 187
    .local v9, "key":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/camera/data/MediaDetails;->hasUnit(I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 188
    const-string v16, "%s: %s %s"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    const/16 v19, 0x2

    .line 189
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/camera/data/MediaDetails;->getUnit(I)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 188
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 194
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 98
    .end local v9    # "key":I
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 97
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 99
    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_1

    .line 102
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_1
    const-string v16, "1"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const v16, 0x7f0800d6

    .line 103
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 105
    .restart local v14    # "value":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .line 103
    .end local v14    # "value":Ljava/lang/String;
    :cond_2
    const v16, 0x7f080022

    .line 104
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 109
    :sswitch_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/MediaDetails$FlashState;

    .line 112
    .local v5, "flash":Lcom/android/camera/data/MediaDetails$FlashState;
    invoke-virtual {v5}, Lcom/android/camera/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 113
    const v16, 0x7f0800a1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 115
    .end local v14    # "value":Ljava/lang/String;
    :cond_3
    const v16, 0x7f08009f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 117
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 120
    .end local v5    # "flash":Lcom/android/camera/data/MediaDetails$FlashState;
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 121
    .restart local v14    # "value":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 122
    .local v12, "time":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v12, v18

    if-gez v16, :cond_4

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    const-string v18, "%d/%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v24, v24, v12

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    .line 124
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 123
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 126
    :cond_4
    double-to-int v8, v12

    .line 127
    .local v8, "integer":I
    int-to-double v0, v8

    move-wide/from16 v18, v0

    sub-double v12, v12, v18

    .line 128
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "\'\'"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 129
    const-wide v18, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v16, v12, v18

    if-lez v16, :cond_1

    .line 130
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    const-string v19, " %d/%d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v24, v24, v12

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    .line 131
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    .line 130
    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 137
    .end local v8    # "integer":I
    .end local v12    # "time":D
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    .line 138
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v18, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 139
    const v16, 0x7f080285

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 140
    .restart local v14    # "value":Ljava/lang/String;
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 142
    .end local v14    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 144
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 146
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    .line 147
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v18, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 148
    const v16, 0x7f080285

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 149
    .restart local v14    # "value":Ljava/lang/String;
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 151
    .end local v14    # "value":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 153
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 161
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 162
    .restart local v14    # "value":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 163
    goto/16 :goto_1

    .line 165
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 166
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 168
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object v14

    .line 169
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 171
    .end local v14    # "value":Ljava/lang/String;
    :sswitch_9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 172
    .local v6, "focalLength":D
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalNumber(D)Ljava/lang/String;

    move-result-object v14

    .line 173
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 191
    .end local v6    # "focalLength":D
    .restart local v9    # "key":I
    :cond_7
    const-string v16, "%s: %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 196
    .end local v4    # "detail":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v9    # "key":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    if-nez v11, :cond_9

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->resolveResolution(Ljava/lang/String;)V

    .line 199
    :cond_9
    return-void

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_7
        0xa -> :sswitch_0
        0x66 -> :sswitch_2
        0x67 -> :sswitch_9
        0x68 -> :sswitch_1
        0x6b -> :sswitch_3
        0x6c -> :sswitch_8
        0xc8 -> :sswitch_6
    .end sparse-switch
.end method

.method private toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "valueObj"    # Ljava/lang/Object;

    .prologue
    .line 266
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 267
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "valueObj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 269
    .restart local p1    # "valueObj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toLocalNumber(D)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # D

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toLocalNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "n"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mMediaDetails:Lcom/android/camera/data/MediaDetails;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 230
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    .local v0, "tv":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 240
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "tv":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onResolutionAvailable(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 247
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v3, "%s: %d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    .line 251
    invoke-static {v5, v6}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 250
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "widthString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v3, "%s: %d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x6

    .line 254
    invoke-static {v5, v6}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 253
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "heightString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p0}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public resolveResolution(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->onResolutionAvailable(II)V

    goto :goto_0
.end method
