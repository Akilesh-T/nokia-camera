.class public Lcom/sina/sinalivesdk/manager/UserManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/sina/sinalivesdk/models/UserModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/manager/UserManager;-><init>()V

    return-void
.end method

.method public static instance()Lcom/sina/sinalivesdk/manager/UserManager;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/manager/UserManager$LazyHolder;->a:Lcom/sina/sinalivesdk/manager/UserManager;

    return-object v0
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/UserManager;->a:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/UserManager;->a:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/UserManager;->a:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getUid()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUser()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/UserManager;->a:Lcom/sina/sinalivesdk/models/UserModel;

    return-object v0
.end method

.method public setUser(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/manager/UserManager;->a:Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method
