.class public abstract Lcom/adobe/xmp/options/Options;
.super Ljava/lang/Object;


# instance fields
.field private optionNames:Ljava/util/Map;

.field private options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->setOptions(I)V

    return-void
.end method

.method private assertOptionsValid(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getValidOptions()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->assertConsistency(I)V

    return-void

    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The option bit(s) 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " are invalid!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x67

    invoke-direct {v1, v0, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private getOptionName(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;->procureOptionNames()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->defineOptionName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "<option name not defined>"

    goto :goto_0
.end method

.method private procureOptionNames()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected assertConsistency(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    return-void
.end method

.method public containsAllOptions(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsOneOf(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract defineOptionName(I)Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    check-cast p1, Lcom/adobe/xmp/options/Options;

    invoke-virtual {p1}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOption(I)Z
    .locals 1

    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptions()I
    .locals 1

    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    return v0
.end method

.method public getOptionsString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/adobe/xmp/options/Options;->getOptionName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const-string v0, "<none>"

    goto :goto_1
.end method

.method protected abstract getValidOptions()I
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    return v0
.end method

.method public isExactly(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOption(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    return-void

    :cond_0
    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOptions(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    iput p1, p0, Lcom/adobe/xmp/options/Options;->options:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/xmp/options/Options;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
