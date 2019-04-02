.class final Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;
.super Ljava/util/HashMap;
.source "TensorAttributesMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/qualcomm/qti/snpe/TensorAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V
    .locals 4
    .param p1, "bundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v1

    .line 19
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;-><init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V

    .line 22
    .local v0, "attributes":Lcom/qualcomm/qti/snpe/TensorAttributes;
    invoke-virtual {p0, v3, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "attributes":Lcom/qualcomm/qti/snpe/TensorAttributes;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getTensorShapes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v1, "tensorShapes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[I>;"
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/TensorAttributes;

    invoke-interface {v2}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
