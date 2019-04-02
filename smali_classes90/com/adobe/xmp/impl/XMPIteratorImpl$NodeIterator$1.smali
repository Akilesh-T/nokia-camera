.class Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/xmp/properties/XMPPropertyInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

.field final synthetic val$baseNS:Ljava/lang/String;

.field final synthetic val$node:Lcom/adobe/xmp/impl/XMPNode;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->this$1:Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$node:Lcom/adobe/xmp/impl/XMPNode;

    iput-object p3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$baseNS:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$node:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/xmp/impl/QName;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$node:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/QName;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$baseNS:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOptions()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$node:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$path:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$value:Ljava/lang/String;

    return-object v0
.end method
