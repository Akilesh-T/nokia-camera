.class final enum Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
.super Ljava/lang/Enum;
.source "FetchedAppSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FetchAppSettingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

.field public static final enum ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

.field public static final enum LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

.field public static final enum NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

.field public static final enum SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const-string v1, "NOT_LOADED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 66
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 67
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 68
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->$VALUES:[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->$VALUES:[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v0}, [Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    return-object v0
.end method
