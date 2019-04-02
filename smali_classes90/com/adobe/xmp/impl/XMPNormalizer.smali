.class public Lcom/adobe/xmp/impl/XMPNormalizer;
.super Ljava/lang/Object;


# static fields
.field private static dcArrayForms:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/adobe/xmp/impl/XMPNormalizer;->initDCArrays()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/16 v2, 0xcb

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Mismatch between alias and base nodes"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Mismatch between alias and base nodes"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v0, v1, v4}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v0, v1, v4}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static deleteEmptySchemas(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static fixGPSTimeStamp(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "exif:GPSTimeStamp"

    invoke-static {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v2

    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exif:DateTimeOriginal"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "exif:DateTimeDigitized"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, v2}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static initDCArrays()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:contributor"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:language"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:publisher"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:relation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:subject"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:creator"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:date"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:description"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:rights"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:title"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static migrateAudioCopyright(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 11

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n\n"

    const-string v2, "dc:rights"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "rights"

    const-string v4, ""

    const-string v5, "x-default"

    const/4 v7, 0x0

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/adobe/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    :goto_1
    return-void

    :cond_2
    const-string v1, "x-default"

    invoke-static {v10, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "rights"

    const-string v4, ""

    const-string v5, "x-default"

    const/4 v7, 0x0

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/adobe/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v1, "x-default"

    invoke-static {v10, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v1

    :cond_3
    invoke-virtual {v10, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private static moveExplicitAliases(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/options/ParseOptions;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getHasAliases()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v11}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getStrictAliasing()Z

    move-result v4

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getUnmodifiableChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getHasAliases()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v11}, Lcom/adobe/xmp/impl/XMPNode;->setAlias(Z)V

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v3, v12}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/xmp/options/AliasOptions;->isSimple()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    new-instance v8, Lcom/adobe/xmp/impl/XMPNode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/AliasOptions;->toPropertyOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-direct {v8, v9, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {v7, v8}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    invoke-static {v6, v1, v8}, Lcom/adobe/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/options/AliasOptions;->isSimple()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_6

    invoke-static {v1, v8, v12}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_7
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/AliasOptions;->isArrayAltText()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "x-default"

    invoke-static {v8, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_c

    invoke-virtual {v8, v2}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_9

    invoke-static {v6, v1, v8}, Lcom/adobe/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v8, v12}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    invoke-static {v1, v2, v12}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0, v11}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    goto/16 :goto_0

    :cond_c
    move-object v2, v3

    goto :goto_2
.end method

.method private static normalizeDCArrays(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    if-gt v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    sget-object v0, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/options/PropertyOptions;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v4, "[]"

    invoke-virtual {v2, v4}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    invoke-virtual {p0, v1, v3}, Lcom/adobe/xmp/impl/XMPNode;->replaceChild(ILcom/adobe/xmp/impl/XMPNode;)V

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string v3, "xml:lang"

    const-string v4, "x-default"

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    const/16 v4, 0x1e00

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method static process(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {p0}, Lcom/adobe/xmp/impl/XMPNormalizer;->touchUpDataModel(Lcom/adobe/xmp/impl/XMPMetaImpl;)V

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPNormalizer;->moveExplicitAliases(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/options/ParseOptions;)V

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->tweakOldXMP(Lcom/adobe/xmp/impl/XMPNode;)V

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->deleteEmptySchemas(Lcom/adobe/xmp/impl/XMPNode;)V

    return-object p0
.end method

.method private static repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/adobe/xmp/impl/XMPNode;

    const-string v3, "xml:lang"

    const-string v4, "x-repair"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method private static touchUpDataModel(Lcom/adobe/xmp/impl/XMPMetaImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    const-string v1, "http://purl.org/dc/elements/1.1/"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string v2, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->normalizeDCArrays(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_1
    const-string v2, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->fixGPSTimeStamp(Lcom/adobe/xmp/impl/XMPNode;)V

    const-string v2, "exif:UserComment"

    invoke-static {v0, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_2
    const-string v2, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "xmpDM:copyright"

    invoke-static {v0, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->migrateAudioCopyright(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_3
    const-string v2, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "xmpRights:UsageTerms"

    invoke-static {v0, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Alias to x-default already has a language qualifier"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string v1, "xml:lang"

    const-string v2, "x-default"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const-string v0, "[]"

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    return-void
.end method

.method private static tweakOldXMP(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->checkUUIDFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v2, "InstanceID"

    invoke-static {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->setOptions(Lcom/adobe/xmp/options/PropertyOptions;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifiers()V

    invoke-virtual {p0, v4}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Failure creating xmpMM:InstanceID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
