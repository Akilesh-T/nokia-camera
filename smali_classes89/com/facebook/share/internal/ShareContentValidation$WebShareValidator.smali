.class Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;
.super Lcom/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebShareValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/internal/ShareContentValidation$1;

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 2
    .param p1, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;

    .prologue
    .line 458
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share ShareMediaContent via web sharing dialogs"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .prologue
    .line 463
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$500(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 464
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 2
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;

    .prologue
    .line 453
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share ShareVideoContent via web sharing dialogs"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
