.class public Lcom/drew/metadata/xmp/XmpDirectory;
.super Lcom/drew/metadata/Directory;
.source "XmpDirectory.java"


# static fields
.field public static final TAG_XMP_VALUE_COUNT:I = 0xffff

.field protected static final _tagNameMap:Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _xmpMeta:Lcom/adobe/xmp/XMPMeta;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/xmp/XmpDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lcom/drew/metadata/xmp/XmpDirectory;->_tagNameMap:Ljava/util/HashMap;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XMP Value Count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 63
    new-instance v0, Lcom/drew/metadata/xmp/XmpDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/xmp/XmpDescriptor;-><init>(Lcom/drew/metadata/xmp/XmpDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/xmp/XmpDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 70
    const-string v0, "XMP"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1
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

    .prologue
    .line 77
    sget-object v0, Lcom/drew/metadata/xmp/XmpDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/drew/metadata/xmp/XmpDirectory;->_xmpMeta:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/xmp/XmpDirectory;->_xmpMeta:Lcom/adobe/xmp/XMPMeta;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/xmp/XmpDirectory;->_xmpMeta:Lcom/adobe/xmp/XMPMeta;

    return-object v0
.end method

.method public getXmpProperties()Ljava/util/Map;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v3, "propertyValueByPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/drew/metadata/xmp/XmpDirectory;->_xmpMeta:Lcom/adobe/xmp/XMPMeta;

    if-eqz v5, :cond_1

    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/drew/metadata/xmp/XmpDirectory;->_xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-interface {v5}, Lcom/adobe/xmp/XMPMeta;->iterator()Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 96
    .local v2, "prop":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "path":Ljava/lang/String;
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 99
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0    # "i":Ljava/util/Iterator;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "prop":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 106
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method public setXMPMeta(Lcom/adobe/xmp/XMPMeta;)V
    .locals 4
    .param p1, "xmpMeta"    # Lcom/adobe/xmp/XMPMeta;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 111
    iput-object p1, p0, Lcom/drew/metadata/xmp/XmpDirectory;->_xmpMeta:Lcom/adobe/xmp/XMPMeta;

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "valueCount":I
    :try_start_0
    iget-object v3, p0, Lcom/drew/metadata/xmp/XmpDirectory;->_xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-interface {v3}, Lcom/adobe/xmp/XMPMeta;->iterator()Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 117
    .local v1, "prop":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "prop":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    :cond_1
    const v3, 0xffff

    invoke-virtual {p0, v3, v2}, Lcom/drew/metadata/xmp/XmpDirectory;->setInt(II)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "i":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v3

    goto :goto_1
.end method
