.class public abstract Lcom/drew/metadata/Directory;
.super Ljava/lang/Object;
.source "Directory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final _floatFormatPattern:Ljava/lang/String; = "0.###"


# instance fields
.field protected final _definedTagList:Ljava/util/Collection;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/drew/metadata/Tag;",
            ">;"
        }
    .end annotation
.end field

.field protected _descriptor:Lcom/drew/metadata/TagDescriptor;

.field private final _errorList:Ljava/util/Collection;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _parent:Lcom/drew/metadata/Directory;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field protected final _tagMap:Ljava/util/Map;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/drew/metadata/Directory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/drew/metadata/Directory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    .line 89
    return-void
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 154
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public containsTag(I)Z
    .locals 2
    .param p1, "tagType"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .param p1, "tagType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getBooleanObject(I)Ljava/lang/Boolean;

    move-result-object v1

    .line 775
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 777
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 778
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 779
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 780
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' cannot be converted to a boolean.  It is of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBooleanObject(I)Ljava/lang/Boolean;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .annotation build Lcom/drew/lang/annotations/SuppressWarnings;
        justification = "keep API interface consistent"
        value = "NP_BOOLEAN_RETURN_NULL"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 788
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 789
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 802
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 791
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 792
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0

    .line 793
    :cond_1
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_2

    instance-of v3, v1, Lcom/drew/metadata/StringValue;

    if-eqz v3, :cond_3

    .line 795
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .local v0, "nfe":Ljava/lang/NumberFormatException;
    move-object v1, v2

    .line 797
    goto :goto_0

    .line 800
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 801
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .restart local v1    # "o":Ljava/lang/Object;
    :cond_5
    move-object v1, v2

    .line 802
    goto :goto_0
.end method

.method public getByteArray(I)[B
    .locals 9
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 637
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 675
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 639
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v7, v3, Lcom/drew/metadata/StringValue;

    if-eqz v7, :cond_2

    .line 640
    check-cast v3, Lcom/drew/metadata/StringValue;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 641
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v7, v3, [Lcom/drew/lang/Rational;

    if-eqz v7, :cond_3

    .line 642
    check-cast v3, [Lcom/drew/lang/Rational;

    .end local v3    # "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [Lcom/drew/lang/Rational;

    .line 643
    .local v4, "rationals":[Lcom/drew/lang/Rational;
    array-length v7, v4

    new-array v0, v7, [B

    .line 644
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_0

    .line 645
    aget-object v7, v4, v1

    invoke-virtual {v7}, Lcom/drew/lang/Rational;->byteValue()B

    move-result v7

    aput-byte v7, v0, v1

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 648
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v4    # "rationals":[Lcom/drew/lang/Rational;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v7, v3, [B

    if-eqz v7, :cond_4

    .line 649
    check-cast v3, [B

    .end local v3    # "o":Ljava/lang/Object;
    check-cast v3, [B

    move-object v0, v3

    goto :goto_0

    .line 650
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v7, v3, [I

    if-eqz v7, :cond_5

    .line 651
    check-cast v3, [I

    .end local v3    # "o":Ljava/lang/Object;
    move-object v2, v3

    check-cast v2, [I

    .line 652
    .local v2, "ints":[I
    array-length v7, v2

    new-array v0, v7, [B

    .line 653
    .restart local v0    # "bytes":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 654
    aget v7, v2, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 657
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v2    # "ints":[I
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v7, v3, [S

    if-eqz v7, :cond_6

    .line 658
    check-cast v3, [S

    .end local v3    # "o":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, [S

    .line 659
    .local v5, "shorts":[S
    array-length v7, v5

    new-array v0, v7, [B

    .line 660
    .restart local v0    # "bytes":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v7, v5

    if-ge v1, v7, :cond_0

    .line 661
    aget-short v7, v5, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 664
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v5    # "shorts":[S
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v7, v3, Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    move-object v6, v3

    .line 665
    check-cast v6, Ljava/lang/CharSequence;

    .line 666
    .local v6, "str":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v0, v7, [B

    .line 667
    .restart local v0    # "bytes":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 668
    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 672
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v6    # "str":Ljava/lang/CharSequence;
    :cond_7
    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 673
    const/4 v7, 0x1

    new-array v0, v7, [B

    const/4 v7, 0x0

    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v8

    aput-byte v8, v0, v7

    goto/16 :goto_0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 814
    invoke-virtual {p0, p1, v0, v0}, Lcom/drew/metadata/Directory;->getDate(ILjava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(ILjava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 22
    .param p1, "tagType"    # I
    .param p2, "subsecond"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "timeZone"    # Ljava/util/TimeZone;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 848
    invoke-virtual/range {p0 .. p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    .line 850
    .local v12, "o":Ljava/lang/Object;
    instance-of v0, v12, Ljava/util/Date;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 851
    check-cast v12, Ljava/util/Date;

    .end local v12    # "o":Ljava/lang/Object;
    move-object v4, v12

    .line 922
    :cond_0
    :goto_0
    return-object v4

    .line 853
    .restart local v12    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 855
    .local v4, "date":Ljava/util/Date;
    instance-of v0, v12, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_2

    instance-of v0, v12, Lcom/drew/metadata/StringValue;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 858
    :cond_2
    const/16 v18, 0xc

    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "yyyy:MM:dd HH:mm:ss"

    aput-object v19, v6, v18

    const/16 v18, 0x1

    const-string v19, "yyyy:MM:dd HH:mm"

    aput-object v19, v6, v18

    const/16 v18, 0x2

    const-string v19, "yyyy-MM-dd HH:mm:ss"

    aput-object v19, v6, v18

    const/16 v18, 0x3

    const-string v19, "yyyy-MM-dd HH:mm"

    aput-object v19, v6, v18

    const/16 v18, 0x4

    const-string v19, "yyyy.MM.dd HH:mm:ss"

    aput-object v19, v6, v18

    const/16 v18, 0x5

    const-string v19, "yyyy.MM.dd HH:mm"

    aput-object v19, v6, v18

    const/16 v18, 0x6

    const-string v19, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v19, v6, v18

    const/16 v18, 0x7

    const-string v19, "yyyy-MM-dd\'T\'HH:mm"

    aput-object v19, v6, v18

    const/16 v18, 0x8

    const-string v19, "yyyy-MM-dd"

    aput-object v19, v6, v18

    const/16 v18, 0x9

    const-string v19, "yyyy-MM"

    aput-object v19, v6, v18

    const/16 v18, 0xa

    const-string v19, "yyyyMMdd"

    aput-object v19, v6, v18

    const/16 v18, 0xb

    const-string v19, "yyyy"

    aput-object v19, v6, v18

    .line 872
    .local v6, "datePatterns":[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 875
    .local v7, "dateString":Ljava/lang/String;
    const-string v18, "(\\d\\d:\\d\\d:\\d\\d)(\\.\\d+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 876
    .local v15, "subsecondPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v15, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 877
    .local v14, "subsecondMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 878
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 879
    const-string v18, "$1"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 883
    :cond_3
    const-string v18, "(Z|[+-]\\d\\d:\\d\\d)$"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 884
    .local v17, "timeZonePattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 885
    .local v16, "timeZoneMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 886
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "GMT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Z"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p3

    .line 887
    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 890
    :cond_4
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v5, v2, v9

    .line 892
    .local v5, "datePattern":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/text/SimpleDateFormat;

    invoke-direct {v13, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 893
    .local v13, "parser":Ljava/text/DateFormat;
    if-eqz p3, :cond_6

    .line 894
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 898
    :goto_2
    invoke-virtual {v13, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 906
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "datePattern":Ljava/lang/String;
    .end local v6    # "datePatterns":[Ljava/lang/String;
    .end local v7    # "dateString":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "parser":Ljava/text/DateFormat;
    .end local v14    # "subsecondMatcher":Ljava/util/regex/Matcher;
    .end local v15    # "subsecondPattern":Ljava/util/regex/Pattern;
    .end local v16    # "timeZoneMatcher":Ljava/util/regex/Matcher;
    .end local v17    # "timeZonePattern":Ljava/util/regex/Pattern;
    :cond_5
    if-nez v4, :cond_7

    .line 907
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 896
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "datePattern":Ljava/lang/String;
    .restart local v6    # "datePatterns":[Ljava/lang/String;
    .restart local v7    # "dateString":Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "parser":Ljava/text/DateFormat;
    .restart local v14    # "subsecondMatcher":Ljava/util/regex/Matcher;
    .restart local v15    # "subsecondPattern":Ljava/util/regex/Pattern;
    .restart local v16    # "timeZoneMatcher":Ljava/util/regex/Matcher;
    .restart local v17    # "timeZonePattern":Ljava/util/regex/Pattern;
    :cond_6
    const-string v18, "GMT"

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 900
    .end local v13    # "parser":Ljava/text/DateFormat;
    :catch_0
    move-exception v18

    .line 890
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 909
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "datePattern":Ljava/lang/String;
    .end local v6    # "datePatterns":[Ljava/lang/String;
    .end local v7    # "dateString":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "subsecondMatcher":Ljava/util/regex/Matcher;
    .end local v15    # "subsecondPattern":Ljava/util/regex/Pattern;
    .end local v16    # "timeZoneMatcher":Ljava/util/regex/Matcher;
    .end local v17    # "timeZonePattern":Ljava/util/regex/Pattern;
    :cond_7
    if-eqz p2, :cond_0

    .line 913
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v11, v0

    .line 914
    .local v11, "millisecond":I
    if-ltz v11, :cond_0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    if-ge v11, v0, :cond_0

    .line 915
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 916
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 917
    const/16 v18, 0xe

    move/from16 v0, v18

    invoke-virtual {v3, v0, v11}, Ljava/util/Calendar;->set(II)V

    .line 918
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 921
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v11    # "millisecond":I
    :catch_1
    move-exception v8

    .line 922
    .local v8, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method public getDate(ILjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p1, "tagType"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 827
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/drew/metadata/Directory;->getDate(ILjava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1126
    sget-boolean v0, Lcom/drew/metadata/Directory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/drew/metadata/Directory;->_descriptor:Lcom/drew/metadata/TagDescriptor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_descriptor:Lcom/drew/metadata/TagDescriptor;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 5
    .param p1, "tagType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v1

    .line 682
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_0

    .line 683
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 684
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 685
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 686
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' cannot be converted to a double.  It is of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDoubleObject(I)Ljava/lang/Double;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 693
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 694
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 706
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 696
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_2

    instance-of v3, v1, Lcom/drew/metadata/StringValue;

    if-eqz v3, :cond_3

    .line 698
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 703
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 704
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0
.end method

.method public getErrorCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getErrors()Ljava/lang/Iterable;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 5
    .param p1, "tagType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getFloatObject(I)Ljava/lang/Float;

    move-result-object v1

    .line 713
    .local v1, "value":Ljava/lang/Float;
    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    return v2

    .line 715
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 716
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 717
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' cannot be converted to a float.  It is of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFloatObject(I)Ljava/lang/Float;
    .locals 4
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 726
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 737
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 728
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_2

    instance-of v3, v1, Lcom/drew/metadata/StringValue;

    if-eqz v3, :cond_3

    .line 730
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 735
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 736
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 5
    .param p1, "tagType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 435
    .local v0, "integer":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 439
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 440
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' cannot be converted to int.  It is of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntArray(I)[I
    .locals 9
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 583
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 584
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 623
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 586
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v7, v3, [I

    if-eqz v7, :cond_2

    .line 587
    check-cast v3, [I

    .end local v3    # "o":Ljava/lang/Object;
    check-cast v3, [I

    move-object v2, v3

    goto :goto_0

    .line 588
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v7, v3, [Lcom/drew/lang/Rational;

    if-eqz v7, :cond_3

    .line 589
    check-cast v3, [Lcom/drew/lang/Rational;

    .end local v3    # "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [Lcom/drew/lang/Rational;

    .line 590
    .local v4, "rationals":[Lcom/drew/lang/Rational;
    array-length v7, v4

    new-array v2, v7, [I

    .line 591
    .local v2, "ints":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 592
    aget-object v7, v4, v1

    invoke-virtual {v7}, Lcom/drew/lang/Rational;->intValue()I

    move-result v7

    aput v7, v2, v1

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    .end local v1    # "i":I
    .end local v2    # "ints":[I
    .end local v4    # "rationals":[Lcom/drew/lang/Rational;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v7, v3, [S

    if-eqz v7, :cond_4

    .line 597
    check-cast v3, [S

    .end local v3    # "o":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, [S

    .line 598
    .local v5, "shorts":[S
    array-length v7, v5

    new-array v2, v7, [I

    .line 599
    .restart local v2    # "ints":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v7, v5

    if-ge v1, v7, :cond_0

    .line 600
    aget-short v7, v5, v1

    aput v7, v2, v1

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 604
    .end local v1    # "i":I
    .end local v2    # "ints":[I
    .end local v5    # "shorts":[S
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v7, v3, [B

    if-eqz v7, :cond_5

    .line 605
    check-cast v3, [B

    .end local v3    # "o":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [B

    .line 606
    .local v0, "bytes":[B
    array-length v7, v0

    new-array v2, v7, [I

    .line 607
    .restart local v2    # "ints":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v7, v0

    if-ge v1, v7, :cond_0

    .line 608
    aget-byte v7, v0, v1

    aput v7, v2, v1

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 612
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v2    # "ints":[I
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v7, v3, Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    move-object v6, v3

    .line 613
    check-cast v6, Ljava/lang/CharSequence;

    .line 614
    .local v6, "str":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v2, v7, [I

    .line 615
    .restart local v2    # "ints":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 616
    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput v7, v2, v1

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 620
    .end local v1    # "i":I
    .end local v2    # "ints":[I
    .end local v6    # "str":Ljava/lang/CharSequence;
    :cond_6
    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 621
    const/4 v7, 0x1

    new-array v2, v7, [I

    const/4 v7, 0x0

    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v2, v7

    goto/16 :goto_0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 16
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 462
    invoke-virtual/range {p0 .. p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    .line 464
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_0

    .line 465
    const/4 v11, 0x0

    .line 500
    .end local v7    # "o":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 467
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v11, v7, Ljava/lang/Number;

    if-eqz v11, :cond_1

    .line 468
    check-cast v7, Ljava/lang/Number;

    .end local v7    # "o":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 469
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v11, v7, Ljava/lang/String;

    if-nez v11, :cond_2

    instance-of v11, v7, Lcom/drew/metadata/StringValue;

    if-eqz v11, :cond_4

    .line 471
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 472
    :catch_0
    move-exception v6

    .line 474
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 476
    .local v2, "bytes":[B
    const-wide/16 v12, 0x0

    .line 477
    .local v12, "val":J
    move-object v1, v2

    .local v1, "arr$":[B
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-byte v0, v1, v3

    .line 478
    .local v0, "aByte":B
    const/16 v11, 0x8

    shl-long/2addr v12, v11

    .line 479
    and-int/lit16 v11, v0, 0xff

    int-to-long v14, v11

    add-long/2addr v12, v14

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 481
    .end local v0    # "aByte":B
    :cond_3
    long-to-int v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 483
    .end local v1    # "arr$":[B
    .end local v2    # "bytes":[B
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    .end local v9    # "s":Ljava/lang/String;
    .end local v12    # "val":J
    :cond_4
    instance-of v11, v7, [Lcom/drew/lang/Rational;

    if-eqz v11, :cond_5

    .line 484
    check-cast v7, [Lcom/drew/lang/Rational;

    .end local v7    # "o":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, [Lcom/drew/lang/Rational;

    .line 485
    .local v8, "rationals":[Lcom/drew/lang/Rational;
    array-length v11, v8

    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 486
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Lcom/drew/lang/Rational;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 487
    .end local v8    # "rationals":[Lcom/drew/lang/Rational;
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v11, v7, [B

    if-eqz v11, :cond_6

    .line 488
    check-cast v7, [B

    .end local v7    # "o":Ljava/lang/Object;
    move-object v2, v7

    check-cast v2, [B

    .line 489
    .restart local v2    # "bytes":[B
    array-length v11, v2

    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 490
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 491
    .end local v2    # "bytes":[B
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v11, v7, [I

    if-eqz v11, :cond_7

    .line 492
    check-cast v7, [I

    .end local v7    # "o":Ljava/lang/Object;
    move-object v4, v7

    check-cast v4, [I

    .line 493
    .local v4, "ints":[I
    array-length v11, v4

    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 494
    const/4 v11, 0x0

    aget v11, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 495
    .end local v4    # "ints":[I
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v11, v7, [S

    if-eqz v11, :cond_8

    .line 496
    check-cast v7, [S

    .end local v7    # "o":Ljava/lang/Object;
    move-object v10, v7

    check-cast v10, [S

    .line 497
    .local v10, "shorts":[S
    array-length v11, v10

    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 498
    const/4 v11, 0x0

    aget-short v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 500
    .end local v10    # "shorts":[S
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public getLong(I)J
    .locals 5
    .param p1, "tagType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v1

    .line 744
    .local v1, "value":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 746
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 747
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 748
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 749
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' cannot be converted to a long.  It is of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLongObject(I)Ljava/lang/Long;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 756
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 757
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 768
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 759
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_2

    instance-of v3, v1, Lcom/drew/metadata/StringValue;

    if-eqz v3, :cond_3

    .line 761
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 766
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 767
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/drew/metadata/Directory;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_parent:Lcom/drew/metadata/Directory;

    return-object v0
.end method

.method public getRational(I)Lcom/drew/lang/Rational;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    const/4 v1, 0x0

    .line 930
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 932
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 944
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 935
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Lcom/drew/lang/Rational;

    if-eqz v2, :cond_1

    .line 936
    check-cast v0, Lcom/drew/lang/Rational;

    goto :goto_0

    .line 937
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 938
    new-instance v1, Lcom/drew/lang/Rational;

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    move-object v0, v1

    goto :goto_0

    .line 939
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 940
    new-instance v1, Lcom/drew/lang/Rational;

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    move-object v0, v1

    goto :goto_0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_3
    move-object v0, v1

    .line 944
    goto :goto_0
.end method

.method public getRationalArray(I)[Lcom/drew/lang/Rational;
    .locals 3
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 951
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 952
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 958
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 955
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, [Lcom/drew/lang/Rational;

    if-eqz v2, :cond_1

    .line 956
    check-cast v0, [Lcom/drew/lang/Rational;

    .end local v0    # "o":Ljava/lang/Object;
    check-cast v0, [Lcom/drew/lang/Rational;

    goto :goto_0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    .line 958
    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 9
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v8, 0x20

    .line 971
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 972
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 973
    const/4 v5, 0x0

    .line 1045
    .end local v3    # "o":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 975
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v5, v3, Lcom/drew/lang/Rational;

    if-eqz v5, :cond_1

    .line 976
    check-cast v3, Lcom/drew/lang/Rational;

    .end local v3    # "o":Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 978
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 980
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 981
    .local v0, "arrayLength":I
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 983
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    .local v4, "string":Ljava/lang/StringBuilder;
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 987
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_10

    .line 988
    if-eqz v2, :cond_2

    .line 989
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 990
    :cond_2
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 992
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "int"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 993
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_10

    .line 994
    if-eqz v2, :cond_4

    .line 995
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    :cond_4
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 993
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 998
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "short"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 999
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_10

    .line 1000
    if-eqz v2, :cond_6

    .line 1001
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    :cond_6
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 999
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1004
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "long"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1005
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_10

    .line 1006
    if-eqz v2, :cond_8

    .line 1007
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1008
    :cond_8
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1010
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "float"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1011
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_10

    .line 1012
    if-eqz v2, :cond_a

    .line 1013
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1014
    :cond_a
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0.###"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1016
    .end local v2    # "i":I
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "double"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1017
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v0, :cond_10

    .line 1018
    if-eqz v2, :cond_c

    .line 1019
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1020
    :cond_c
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0.###"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1022
    .end local v2    # "i":I
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "byte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1023
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v0, :cond_10

    .line 1024
    if-eqz v2, :cond_e

    .line 1025
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1026
    :cond_e
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1023
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1029
    .end local v2    # "i":I
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected array component type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    .line 1032
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1035
    .end local v0    # "arrayLength":I
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "string":Ljava/lang/StringBuilder;
    :cond_11
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_12

    .line 1036
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0.###"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Double;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1038
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_12
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_13

    .line 1039
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0.###"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Float;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1045
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tagType"    # I
    .param p2, "charset"    # Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1051
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 1052
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 1057
    :goto_0
    return-object v2

    .line 1055
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 1056
    :catch_0
    move-exception v1

    .line 1057
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 10
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 513
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 514
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 550
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 516
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v7, v3, [Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 517
    check-cast v3, [Ljava/lang/String;

    .end local v3    # "o":Ljava/lang/Object;
    check-cast v3, [Ljava/lang/String;

    move-object v6, v3

    goto :goto_0

    .line 518
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 519
    new-array v6, v9, [Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "o":Ljava/lang/Object;
    aput-object v3, v6, v8

    goto :goto_0

    .line 520
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v7, v3, Lcom/drew/metadata/StringValue;

    if-eqz v7, :cond_4

    .line 521
    new-array v6, v9, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    goto :goto_0

    .line 522
    :cond_4
    instance-of v7, v3, [Lcom/drew/metadata/StringValue;

    if-eqz v7, :cond_5

    .line 523
    check-cast v3, [Lcom/drew/metadata/StringValue;

    .end local v3    # "o":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, [Lcom/drew/metadata/StringValue;

    .line 524
    .local v5, "stringValues":[Lcom/drew/metadata/StringValue;
    array-length v7, v5

    new-array v6, v7, [Ljava/lang/String;

    .line 525
    .local v6, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 526
    aget-object v7, v5, v1

    invoke-virtual {v7}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    .end local v1    # "i":I
    .end local v5    # "stringValues":[Lcom/drew/metadata/StringValue;
    .end local v6    # "strings":[Ljava/lang/String;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v7, v3, [I

    if-eqz v7, :cond_6

    .line 530
    check-cast v3, [I

    .end local v3    # "o":Ljava/lang/Object;
    move-object v2, v3

    check-cast v2, [I

    .line 531
    .local v2, "ints":[I
    array-length v7, v2

    new-array v6, v7, [Ljava/lang/String;

    .line 532
    .restart local v6    # "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 533
    aget v7, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 536
    .end local v1    # "i":I
    .end local v2    # "ints":[I
    .end local v6    # "strings":[Ljava/lang/String;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v7, v3, [B

    if-eqz v7, :cond_7

    .line 537
    check-cast v3, [B

    .end local v3    # "o":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [B

    .line 538
    .local v0, "bytes":[B
    array-length v7, v0

    new-array v6, v7, [Ljava/lang/String;

    .line 539
    .restart local v6    # "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 540
    aget-byte v7, v0, v1

    invoke-static {v7}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 543
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v6    # "strings":[Ljava/lang/String;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v7, v3, [Lcom/drew/lang/Rational;

    if-eqz v7, :cond_0

    .line 544
    check-cast v3, [Lcom/drew/lang/Rational;

    .end local v3    # "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [Lcom/drew/lang/Rational;

    .line 545
    .local v4, "rationals":[Lcom/drew/lang/Rational;
    array-length v7, v4

    new-array v6, v7, [Ljava/lang/String;

    .line 546
    .restart local v6    # "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 547
    aget-object v7, v4, v1

    invoke-virtual {v7, v8}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getStringValue(I)Lcom/drew/metadata/StringValue;
    .locals 2
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1064
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1065
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_0

    .line 1066
    check-cast v0, Lcom/drew/metadata/StringValue;

    .line 1067
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringValueArray(I)[Lcom/drew/metadata/StringValue;
    .locals 3
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 563
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 564
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 570
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 566
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, [Lcom/drew/metadata/StringValue;

    if-eqz v2, :cond_1

    .line 567
    check-cast v0, [Lcom/drew/metadata/StringValue;

    .end local v0    # "o":Ljava/lang/Object;
    check-cast v0, [Lcom/drew/metadata/StringValue;

    goto :goto_0

    .line 568
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lcom/drew/metadata/StringValue;

    if-eqz v2, :cond_2

    .line 569
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/drew/metadata/StringValue;

    const/4 v2, 0x0

    check-cast v0, Lcom/drew/metadata/StringValue;

    .end local v0    # "o":Ljava/lang/Object;
    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    move-object v0, v1

    .line 570
    goto :goto_0
.end method

.method public getTagCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getTagName(I)Ljava/lang/String;
    .locals 4
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/drew/metadata/Directory;->getTagNameMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1095
    .local v1, "nameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1096
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "hex":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1102
    .end local v0    # "hex":Ljava/lang/String;
    :goto_1
    return-object v2

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1
.end method

.method protected abstract getTagNameMap()Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getTags()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/drew/metadata/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTagName(I)Z
    .locals 2
    .param p1, "tagType"    # I

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/drew/metadata/Directory;->getTagNameMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBoolean(IZ)V
    .locals 1
    .param p1, "tagType"    # I
    .param p2, "value"    # Z

    .prologue
    .line 321
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 322
    return-void
.end method

.method public setByteArray(I[B)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "bytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 377
    return-void
.end method

.method public setDate(ILjava/util/Date;)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "value"    # Ljava/util/Date;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 344
    return-void
.end method

.method public setDescriptor(Lcom/drew/metadata/TagDescriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/drew/metadata/TagDescriptor;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set a null descriptor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/drew/metadata/Directory;->_descriptor:Lcom/drew/metadata/TagDescriptor;

    .line 145
    return-void
.end method

.method public setDouble(ID)V
    .locals 2
    .param p1, "tagType"    # I
    .param p2, "value"    # D

    .prologue
    .line 249
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 250
    return-void
.end method

.method public setDoubleArray(I[D)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "doubles"    # [D
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 261
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "tagType"    # I
    .param p2, "value"    # F

    .prologue
    .line 227
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 228
    return-void
.end method

.method public setFloatArray(I[F)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "floats"    # [F
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "tagType"    # I
    .param p2, "value"    # I

    .prologue
    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 206
    return-void
.end method

.method public setIntArray(I[I)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "ints"    # [I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 217
    return-void
.end method

.method public setLong(IJ)V
    .locals 2
    .param p1, "tagType"    # I
    .param p2, "value"    # J

    .prologue
    .line 332
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 333
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tagType"    # I
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 389
    if-nez p2, :cond_0

    .line 390
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set a null object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    new-instance v1, Lcom/drew/metadata/Tag;

    invoke-direct {v1, p1, p0}, Lcom/drew/metadata/Tag;-><init>(ILcom/drew/metadata/Directory;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method

.method public setObjectArray(ILjava/lang/Object;)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "array"    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 413
    return-void
.end method

.method public setParent(Lcom/drew/metadata/Directory;)V
    .locals 0
    .param p1, "parent"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 192
    iput-object p1, p0, Lcom/drew/metadata/Directory;->_parent:Lcom/drew/metadata/Directory;

    .line 193
    return-void
.end method

.method public setRational(ILcom/drew/lang/Rational;)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "rational"    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 355
    return-void
.end method

.method public setRationalArray(I[Lcom/drew/lang/Rational;)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "rationals"    # [Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 366
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 2
    .param p1, "tagType"    # I
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 286
    if-nez p2, :cond_0

    .line 287
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set a null String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 289
    return-void
.end method

.method public setStringArray(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "strings"    # [Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 300
    return-void
.end method

.method public setStringValue(ILcom/drew/metadata/StringValue;)V
    .locals 2
    .param p1, "tagType"    # I
    .param p2, "value"    # Lcom/drew/metadata/StringValue;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set a null StringValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 275
    return-void
.end method

.method public setStringValueArray(I[Lcom/drew/metadata/StringValue;)V
    .locals 0
    .param p1, "tagType"    # I
    .param p2, "strings"    # [Lcom/drew/metadata/StringValue;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 311
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1133
    const-string v1, "%s Directory (%d %s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "tag"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "tags"

    goto :goto_0
.end method
