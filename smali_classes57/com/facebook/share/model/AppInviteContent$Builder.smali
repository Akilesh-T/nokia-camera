.class public Lcom/facebook/share/model/AppInviteContent$Builder;
.super Ljava/lang/Object;
.source "AppInviteContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppInviteContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcom/facebook/share/model/AppInviteContent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private applinkUrl:Ljava/lang/String;

.field private destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

.field private previewImageUrl:Ljava/lang/String;

.field private promoCode:Ljava/lang/String;

.field private promoText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->applinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->previewImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->promoCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->promoText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/AppInviteContent$Builder;)Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    return-object v0
.end method

.method private isAlphanumericWithSpaces(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 296
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 297
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    const/4 v2, 0x0

    .line 301
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 295
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/AppInviteContent;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/facebook/share/model/AppInviteContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Lcom/facebook/share/model/AppInviteContent$Builder;Lcom/facebook/share/model/AppInviteContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent$Builder;->build()Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .locals 3
    .param p1, "content"    # Lcom/facebook/share/model/AppInviteContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 287
    .end local p0    # "this":Lcom/facebook/share/model/AppInviteContent$Builder;
    :goto_0
    return-object p0

    .line 288
    .restart local p0    # "this":Lcom/facebook/share/model/AppInviteContent$Builder;
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getApplinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/AppInviteContent$Builder;->setApplinkUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPreviewImageUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getPromotionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getPromotionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPromotionDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getDestination()Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppInviteContent$Builder;->setDestination(Lcom/facebook/share/model/AppInviteContent$Builder$Destination;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->readFrom(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setApplinkUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .locals 0
    .param p1, "applinkUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->applinkUrl:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public setDestination(Lcom/facebook/share/model/AppInviteContent$Builder$Destination;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .locals 0
    .param p1, "destination"    # Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 262
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .locals 0
    .param p1, "previewImageUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->previewImageUrl:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public setPromotionDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .locals 2
    .param p1, "promotionText"    # Ljava/lang/String;
    .param p2, "promotionCode"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion text, promotionText needs to be between1 and 80 characters long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->isAlphanumericWithSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion text, promotionText can only contain alphanumericcharacters and spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion code, promotionCode can be between1 and 10 characters long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    invoke-direct {p0, p2}, Lcom/facebook/share/model/AppInviteContent$Builder;->isAlphanumericWithSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion code, promotionCode can only contain alphanumeric characters and spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "promotionCode cannot be specified without a valid promotionText"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_4
    iput-object p2, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->promoCode:Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->promoText:Ljava/lang/String;

    .line 252
    return-object p0
.end method
