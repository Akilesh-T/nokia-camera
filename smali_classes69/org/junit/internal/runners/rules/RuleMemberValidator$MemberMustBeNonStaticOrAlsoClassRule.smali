.class final Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"

# interfaces
.implements Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/rules/RuleMemberValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemberMustBeNonStaticOrAlsoClassRule"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/internal/runners/rules/RuleMemberValidator$1;

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->access$1200(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v1

    .line 169
    .local v1, "isMethodRuleMember":Z
    const-class v3, Lorg/junit/ClassRule;

    invoke-virtual {p1, v3}, Lorg/junit/runners/model/FrameworkMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 176
    .local v0, "isClassRuleAnnotated":Z
    :goto_0
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->access$1200(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    const-string v2, "must not be static."

    .line 183
    .local v2, "message":Ljava/lang/String;
    :goto_1
    new-instance v3, Lorg/junit/internal/runners/rules/ValidationError;

    invoke-direct {v3, p1, p2, v2}, Lorg/junit/internal/runners/rules/ValidationError;-><init>(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    return-void

    .line 169
    .end local v0    # "isClassRuleAnnotated":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    .restart local v0    # "isClassRuleAnnotated":Z
    :cond_3
    const-string v2, "must not be static or it must be annotated with @ClassRule."

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1
.end method
