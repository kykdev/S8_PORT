.class public Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;
.super Lcom/samsung/javaomp/compiler/SimpleNode;
.source "Unknown"


# instance fields
.field protected id:Ljava/lang/String;

.field protected initExpr:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    return-void
.end method


# virtual methods
.method public getExpression()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;->initExpr:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;->type:Ljava/lang/String;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;->initExpr:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;->id:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;->type:Ljava/lang/String;

    return-void
.end method
